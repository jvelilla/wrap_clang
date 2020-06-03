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
			clang_equal_locations as clang_equal_locations_api,
			clang_range_is_null as clang_range_is_null_api,
			clang_tokenize as clang_tokenize_api
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


	clang_equal_locations (loc1: detachable CXSOURCE_LOCATION_STRUCT_API; loc2: detachable CXSOURCE_LOCATION_STRUCT_API): BOOLEAN
		local
			loc1_ptr: POINTER
			loc2_ptr: POINTER
		do
			if attached loc1 as l_loc1 then
				loc1_ptr := l_loc1.item
			end
			if attached loc2 as l_loc2 then
				loc2_ptr := l_loc2.item
			end
			Result := c_clang_equal_locations (loc1_ptr, loc2_ptr).to_boolean
		ensure
			instance_free: class
		end


	clang_range_is_null (range: detachable CXSOURCE_RANGE_STRUCT_API): BOOLEAN
		local
			l_ptr: POINTER
		do
			if attached range as l_range then
				l_ptr := l_range.item
			end
			Result := c_clang_range_is_null (l_ptr).to_boolean
		ensure
			instance_free: class
		end

	clang_tokenize (tu: CXTRANSLATION_UNIT_IMPL_STRUCT_API; range: CXSOURCE_RANGE_STRUCT_API ): LIST [CXTOKEN_STRUCT_API]
		local
			ptr: POINTER
			numtokens: INTEGER
			tokens: CXTOKEN_STRUCT_API
			i: INTEGER
		do
			c_clang_tokenize (tu.item, range.item, $ptr, $numtokens)
			create {ARRAYED_LIST [CXTOKEN_STRUCT_API]} Result.make (numtokens)
			from
				i := 0
			until
				i = numtokens
			loop
				create tokens.make_by_pointer (ptr)
				Result.force (tokens)
				ptr := ptr + {CXTOKEN_STRUCT_API}.structure_size
				i := i + 1
			end
		ensure
			instance_free: class
		end

	token_kind_spelling (a_kind: INTEGER): STRING
		do
			if {CXTOKEN_KIND_ENUM_API}.cxtoken_punctuation = a_kind then
				Result := "Punctuation"
			elseif {CXTOKEN_KIND_ENUM_API}.cxtoken_keyword = a_kind  then
				Result := "Keyword"
			elseif {CXTOKEN_KIND_ENUM_API}.cxtoken_identifier = a_kind then
				Result := "Identifier"
			elseif {CXTOKEN_KIND_ENUM_API}.cxtoken_literal = a_kind then
				Result := "Literal"
			elseif {CXTOKEN_KIND_ENUM_API}.cxtoken_literal = a_kind then
				Result := "Comment"
			else
				Result := "Unknown"
			end
		ensure
			instance_free: class
		end
end
