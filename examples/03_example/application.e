note
	description: "[
		Eiffel example using Clang AST Visitor example
		https://github.com/sabottenda/libclang-sample/blob/master/AST/ASTVisitor.cc
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=AST Visitor", "src=https://github.com/sabottenda/libclang-sample/blob/master/AST/ASTVisitor.cc", "protocol=uri"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			index: CXINDEX
			unit: CXTRANSLATION_UNIT_IMPL_STRUCT_API
			cursor: CXCURSOR_STRUCT_API
			level: INTEGER
			res: INTEGER

		do
			create cursor_visitor.make
			show_clang_version

				-- create index w/ excludeDeclsFromPCH = 1, displayDiagnostics=1.
			index := {INDEX_FUNCTIONS}.clang_create_index (1, 1)

				--  create Translation Unit
			unit := {INDEX_FUNCTIONS}.clang_parse_translation_unit (index, "enum.hpp", default_pointer, 0, Void, 0, {CXTRANSLATION_UNIT_FLAGS_ENUM_API}.cxtranslationunit_none)
			if attached unit then
				cursor := {INDEX_FUNCTIONS}.clang_get_translation_unit_cursor (unit)
				if attached cursor then

					cursor_visitor.register_callback_1 (agent visit_children_callback)
					res := {INDEX_FUNCTIONS}.clang_visit_children (cursor, cursor_visitor.c_dispatcher_1, $level)
				end
			else
				print ("Unable to parse translation Unit%N")
			end
		end

	visit_children_callback (c: POINTER; parent: POINTER; client_data: POINTER): INTEGER
			-- Where c: CXCursor , parent: CXCursor and client_data: CXClientData
		local
			level: INTEGER
			mp: MANAGED_POINTER
			l_cursor, l_parent: CXCURSOR_STRUCT_API
			next, res :INTEGER
		do
				-- Client data in our case is an INTEGER_32
			create mp.make_from_pointer (client_data, {PLATFORM}.integer_32_bytes)
			level := mp.read_integer_32 (0)

			create l_cursor.make_by_pointer (c)
			create l_parent.make_by_pointer (parent)

			print ("  Level: " + level.out + "%N")
			show_spell (l_cursor)
			show_linkage (l_cursor)
			show_cursor_king (l_cursor)
			show_type (l_cursor)
			show_parent (l_cursor, l_parent)
			show_location (l_cursor)
			show_usr (l_cursor)
			show_included_file (l_cursor)

			print ("%N")
			next := level + 1
			res := {INDEX_FUNCTIONS}.clang_visit_children (l_cursor, cursor_visitor.c_dispatcher_1, $next)

			Result := {CXCHILD_VISIT_RESULT_ENUM_API}.cxchildvisit_recurse
		end

	show_spell (a_cursor: CXCURSOR_STRUCT_API)
			-- Show a name for the entity referenced by the cursor `a_cursor`.
		do
			if attached {CXSTRING_STRUCT_API} {INDEX_FUNCTIONS}.clang_get_cursor_spelling (a_cursor) as l_spell then
				print ("  Text: " + {CXSTRING_FUNCTIONS}.clang_get_cstring (l_spell) + "%N")
				{CXSTRING_FUNCTIONS}.clang_dispose_string (l_spell)
			end
		end

	show_linkage (a_cursor: CXCURSOR_STRUCT_API)
			-- Show the linkage of the entity referred to by the cursor `a_cursor`
		local
			linkage: INTEGER
				-- CXLINKAGE_KIND_ENUM_API
			linkage_name: STRING
		do
			linkage := {INDEX_FUNCTIONS}.clang_get_cursor_linkage (a_cursor)

			if {CXLINKAGE_KIND_ENUM_API}.cxlinkage_invalid = linkage then
				linkage_name := "Invalid"
			elseif {CXLINKAGE_KIND_ENUM_API}.cxlinkage_nolinkage = linkage then
				linkage_name := "NoLinkage"
			elseif {CXLINKAGE_KIND_ENUM_API}.cxlinkage_internal = linkage then
				linkage_name := "Internal"
			elseif {CXLINKAGE_KIND_ENUM_API}.cxlinkage_uniqueexternal = linkage then
				linkage_name := "UniqueExternal"
			elseif {CXLINKAGE_KIND_ENUM_API}.cxlinkage_external = linkage then
				linkage_name := "External"
			else
				linkage_name := "Unknown"
			end
			print ("  Linkage: " + linkage_name + "%N");
		end

	show_cursor_king (a_cursor: CXCURSOR_STRUCT_API)
		local
			cursor_kind: INTEGER
			type: STRING
			cursor_name: STRING
		do
			type := "Unknown"
			cursor_kind := {INDEX_FUNCTIONS}.clang_get_cursor_kind (a_cursor)
			if attached {CXSTRING_STRUCT_API} {INDEX_FUNCTIONS}.clang_get_cursor_kind_spelling (cursor_kind) as l_crusor_kind_name then
				cursor_name := {CXSTRING_FUNCTIONS}.clang_get_cstring (l_crusor_kind_name)
				if {INDEX_FUNCTIONS}.clang_is_attribute (cursor_kind) then
					type := "Attribute"
				elseif {INDEX_FUNCTIONS}.clang_is_declaration (cursor_kind) then
					type := "Declaration"
				elseif {INDEX_FUNCTIONS}.clang_is_expression (cursor_kind) then
					type := "Expression"
				elseif {INDEX_FUNCTIONS}.clang_is_invalid (cursor_kind) then
					type := "Invalid"
				elseif {INDEX_FUNCTIONS}.clang_is_preprocessing (cursor_kind) then
					type := "Preprocessing"
				elseif {INDEX_FUNCTIONS}.clang_is_reference (cursor_kind) then
					type := "Reference"
				elseif {INDEX_FUNCTIONS}.clang_is_statement (cursor_kind) then
					type := "Statement"
				elseif {INDEX_FUNCTIONS}.clang_is_translation_unit (cursor_kind) then
					type := "TranslationUnit"
				elseif {INDEX_FUNCTIONS}.clang_is_unexposed (cursor_kind) then
					type := "Unexposed"
				end
				print ("  CursorKind: " + cursor_name + "%N")
				print ("  CursorKindType: " + type + "%N")
				{CXSTRING_FUNCTIONS}.clang_dispose_string (l_crusor_kind_name)
			end
		end

	show_type (a_cursor: CXCURSOR_STRUCT_API)
		local
			type_name: CXSTRING_STRUCT_API
			type_kind: INTEGER
			type_kind_name: CXSTRING_STRUCT_API
		do
			if attached {CXTYPE_STRUCT_API} {INDEX_FUNCTIONS}.clang_get_cursor_type (a_cursor) as l_type then
				type_name := {INDEX_FUNCTIONS}.clang_get_cursor_spelling (a_cursor)
				type_kind := l_type.kind
				type_kind_name := {INDEX_FUNCTIONS}.clang_get_type_kind_spelling (type_kind)
				if attached type_name then
					print ("  Type: " + {CXSTRING_FUNCTIONS}.clang_get_cstring (type_name) + "%N")
					{CXSTRING_FUNCTIONS}.clang_dispose_string (type_name)
				end
				if attached type_kind_name then
					print ("  TypeKind: " + {CXSTRING_FUNCTIONS}.clang_get_cstring (type_kind_name) + "%N")
					{CXSTRING_FUNCTIONS}.clang_dispose_string (type_kind_name)
				end
			end
		end


	show_parent (a_cursor: CXCURSOR_STRUCT_API; a_parent: CXCURSOR_STRUCT_API)
		local
			sema_parent: CXCURSOR_STRUCT_API
			lex_parent: CXCURSOR_STRUCT_API
			parent_name: CXSTRING_STRUCT_API
			sema_parent_name: CXSTRING_STRUCT_API
			lex_parent_name: CXSTRING_STRUCT_API

		do
			sema_parent := {INDEX_FUNCTIONS}.clang_get_cursor_semantic_parent (a_cursor)
			lex_parent := {INDEX_FUNCTIONS}.clang_get_cursor_lexical_parent (a_cursor)
			parent_name := {INDEX_FUNCTIONS}.clang_get_cursor_spelling(a_parent)
			if attached sema_parent then
				sema_parent_name := {INDEX_FUNCTIONS}.clang_get_cursor_spelling(sema_parent)
			end
			if attached lex_parent then
				lex_parent_name := {INDEX_FUNCTIONS}.clang_get_cursor_spelling(lex_parent)
			end
			if attached parent_name and then
				attached sema_parent_name and then
				attached lex_parent_name
			then
				print ("  Parent: parent:" + {CXSTRING_FUNCTIONS}.clang_get_cstring(parent_name) +
								" semantic:" + {CXSTRING_FUNCTIONS}.clang_get_cstring(sema_parent_name) +
								 " lexical:" + {CXSTRING_FUNCTIONS}.clang_get_cstring(lex_parent_name) + "%N")
				{CXSTRING_FUNCTIONS}.clang_dispose_string (parent_name)
				{CXSTRING_FUNCTIONS}.clang_dispose_string (sema_parent_name)
				{CXSTRING_FUNCTIONS}.clang_dispose_string (lex_parent_name)
			end
		end

	show_location (a_cursor: CXCURSOR_STRUCT_API)
		local
			file: POINTER
			line: INTEGER
			column: INTEGER
			offset: INTEGER
		do
			if attached {CXSOURCE_LOCATION_STRUCT_API} {INDEX_FUNCTIONS}.clang_get_cursor_location(a_cursor) as l_src_loc then
				{INDEX_FUNCTIONS}.clang_get_spelling_location(l_src_loc, $file, $line, $column, $offset)
				if attached {CXSTRING_STRUCT_API} {INDEX_FUNCTIONS}.clang_get_file_name(file) as l_file_name then
				  print ("  Location: " + {CXSTRING_FUNCTIONS}.clang_get_cstring(l_file_name) + " " + line.out + " " + column.out + " " + offset.out + "%N")
				  {CXSTRING_FUNCTIONS}.clang_dispose_string (l_file_name)
				end
			end
		end

	show_usr (a_cursor: CXCURSOR_STRUCT_API)
		do
			if attached {CXSTRING_STRUCT_API} {INDEX_FUNCTIONS}.clang_get_cursor_usr (a_cursor) as l_usr then
				print("  USR: "+ {CXSTRING_FUNCTIONS}.clang_get_cstring(l_usr) + "%N")
				{CXSTRING_FUNCTIONS}.clang_dispose_string (l_usr)
			end
		end

	show_included_file (a_cursor: CXCURSOR_STRUCT_API)
		local
			l_included: POINTER
		do
			l_included := {INDEX_FUNCTIONS}.clang_get_included_file (a_cursor)
			if l_included /= default_pointer then
				if attached {CXSTRING_STRUCT_API} {INDEX_FUNCTIONS}.clang_get_file_name (l_included) as l_included_name then
					print("  included file: "+ {CXSTRING_FUNCTIONS}.clang_get_cstring(l_included_name) + "%N")
					{CXSTRING_FUNCTIONS}.clang_dispose_string (l_included_name)
				end
			end
		end
feature -- Clang version

	show_clang_version
		do
			if attached {CXSTRING_STRUCT_API} {INDEX_FUNCTIONS}.clang_get_clang_version as l_clang_version then
				print ({CXSTRING_FUNCTIONS}.clang_get_cstring (l_clang_version))
				io.put_new_line
			end
		end


feature {NONE} -- Implementation 		

	cursor_visitor: CXCURSOR_VISITOR_DISPATCHER

end
