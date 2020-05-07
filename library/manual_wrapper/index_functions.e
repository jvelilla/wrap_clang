note
	description: "Summary description for {INDEX_FUNCTIONS}."
	date: "$Date$"
	revision: "$Revision$"

class
	INDEX_FUNCTIONS

inherit

	INDEX_FUNCTIONS_API
		rename
			clang_create_index as clang_create_index_api,
			clang_parse_translation_unit as clang_parse_translation_unit_api,
			clang_get_translation_unit_cursor as clang_get_translation_unit_cursor_api,
			clang_visit_children as clang_visit_children_api,
			clang_get_cursor_spelling as clang_get_cursor_spelling_api,
			clang_get_cursor_kind_spelling as clang_get_cursor_kind_spelling_api

		end

feature -- Access

	clang_create_index (excludedeclarationsfrompch: INTEGER; displaydiagnostics: INTEGER): CXINDEX
		do
			create Result.make_by_pointer (clang_create_index_api (excludedeclarationsfrompch, displaydiagnostics))
		ensure
			instance_free: class
		end

	clang_parse_translation_unit (cidx: CXINDEX; source_filename: STRING; command_line_args: POINTER; num_command_line_args: INTEGER;
		unsaved_files: detachable CXUNSAVED_FILE_STRUCT_API; num_unsaved_files: INTEGER; options: INTEGER): detachable CXTRANSLATION_UNIT_IMPL_STRUCT_API
		local
			source_filename_c_string: C_STRING
			l_unsaved_files: POINTER
		do
			create source_filename_c_string.make (source_filename)
			if attached unsaved_files then
				l_unsaved_files := unsaved_files.item
			end
			if attached c_clang_parse_translation_unit (cidx.item, source_filename_c_string.item, command_line_args, num_command_line_args, l_unsaved_files, num_unsaved_files, options) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end

	clang_get_translation_unit_cursor (anonymous_1: CXTRANSLATION_UNIT_IMPL_STRUCT_API): detachable CXCURSOR_STRUCT_API
		do
			if attached c_clang_get_translation_unit_cursor (anonymous_1.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			instance_free: class
		end

	clang_visit_children (parent: CXCURSOR_STRUCT_API; visitor: POINTER; client_data: POINTER): INTEGER
		do
			Result := c_clang_visit_children (parent.item, visitor, client_data)
		ensure
			instance_free: class
		end

	clang_get_cursor_spelling (anonymous_1: CXCURSOR_STRUCT_API): detachable CXSTRING_STRUCT_API
		do
			if attached c_clang_get_cursor_spelling (anonymous_1.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	clang_get_cursor_kind_spelling (kind: INTEGER): detachable CXSTRING_STRUCT_API
		do
			if attached c_clang_get_cursor_kind_spelling (kind) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end


end
