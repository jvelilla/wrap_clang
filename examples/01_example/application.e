note
	description: "[
		Eiffel example using Clang to parse C++
		https://shaharmike.com/cpp/libclang/
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"name=", "src=https://shaharmike.com/cpp/libclang/", "protocol=uri"
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
			cursor_visitor: CXCURSOR_VISITOR_DISPATCHER
			cursor: CXCURSOR_STRUCT_API
			res: INTEGER
		do
			index := {INDEX_FUNCTIONS}.clang_create_index (0, 0)

			unit := {INDEX_FUNCTIONS}.clang_parse_translation_unit (index, "enum.hpp", default_pointer, 0, Void, 0, {CXTRANSLATION_UNIT_FLAGS_ENUM_API}.cxtranslationunit_none)
			if attached unit then
				cursor := {INDEX_FUNCTIONS}.clang_get_translation_unit_cursor (unit)
				if attached cursor then
					create cursor_visitor.make
					cursor_visitor.register_callback_1 (agent cursor_visited)
					res :={INDEX_FUNCTIONS}.clang_visit_children (cursor, cursor_visitor.c_dispatcher_1, default_pointer)
				else
					print ("Unable to get translation unit cursor%N")
				end
			else
				print ("Unable to parse translation Unit%N")
			end
		end

	cursor_visited (c: POINTER; parent: POINTER; client_data: POINTER): INTEGER
			-- Where c: CXCursor , parent: CXCursor and client_data: CXClientData
		local
			l_cxs: CXSTRING_STRUCT_API
			l_str: STRING
			l_cxs2: CXSTRING_STRUCT_API
			l_str2: STRING
		do
			l_cxs := {INDEX_FUNCTIONS}.clang_get_cursor_spelling ((create {CXCURSOR_STRUCT_API}.make_by_pointer (c)))
			l_cxs2 := {INDEX_FUNCTIONS}.clang_get_cursor_kind_spelling ({INDEX_FUNCTIONS}.c_clang_get_cursor_kind (c))
			if attached l_cxs then
				l_str := {CXSTRING_FUNCTIONS}.clang_get_cstring (l_cxs)
				print ("Cursor " + l_str)
			end
			if attached l_cxs2 then
				l_str2 := {CXSTRING_FUNCTIONS}.clang_get_cstring (l_cxs2)
				print (" of kind " + l_str2 + "%N")
			end

			print ("%NCursor Kind: " + {INDEX_FUNCTIONS}.c_clang_get_cursor_kind (c).out + "%N")
			Result := {CXCHILD_VISIT_RESULT_ENUM_API}.cxchildvisit_recurse
		end

end
