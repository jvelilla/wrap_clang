note
	description: "[
		Eiffel example using Clang Tokenizer example.
		https://github.com/sabottenda/libclang-sample/blob/master/Token/Tokenize.cc
	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=", "src=https://github.com/sabottenda/libclang-sample/blob/master/Token/Tokenize.cc", "protocol=uri"

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
			tokens: CXTOKEN_STRUCT_API
		do

			show_clang_version

				-- create index w/ excludeDeclsFromPCH = 1, displayDiagnostics=1.
			index := {INDEX_FUNCTIONS}.clang_create_index (0, 0)

				--  create Translation Unit
			unit := {INDEX_FUNCTIONS}.clang_parse_translation_unit (index, "enum.hpp", default_pointer, 0, Void, 0, {CXTRANSLATION_UNIT_FLAGS_ENUM_API}.cxtranslationunit_none)
			if attached unit then
					--  get CXSouceRange of the file
				if attached {CXSOURCE_RANGE_STRUCT_API} get_file_range (unit, "enum.hpp") as l_range then
					create tokens.make
						--{INDEX_FUNCTIONS}.clang_tokenize (unit, l_range, tokens, $num_tokens)
						--show tokens
					show_all_tokens (unit, {INDEX_FUNCTIONS}.clang_tokenize (unit, l_range))
				end
			else
				print ("Unable to parse translation Unit%N")
			end
		end

	get_file_range (a_translation_unit: CXTRANSLATION_UNIT_IMPL_STRUCT_API; a_filename: STRING): detachable CXSOURCE_RANGE_STRUCT_API
		local
			file_ptr: POINTER
			file_size: INTEGER
			file: RAW_FILE
			top_loc: CXSOURCE_LOCATION_STRUCT_API
			last_loc: CXSOURCE_LOCATION_STRUCT_API
			l_range: CXSOURCE_RANGE_STRUCT_API
		do
			create file.make_open_read (a_filename)
			file_size := file.count
			file_ptr := {INDEX_FUNCTIONS}.clang_get_file (a_translation_unit, a_filename)

				-- get top/last location of the file
			top_loc := {INDEX_FUNCTIONS}.clang_get_location_for_offset (a_translation_unit, file_ptr, 0)
			last_loc := {INDEX_FUNCTIONS}.clang_get_location_for_offset (a_translation_unit, file_ptr, file_size)

			if {INDEX_FUNCTIONS}.clang_equal_locations (top_loc, {INDEX_FUNCTIONS}.clang_get_null_location) or
				{INDEX_FUNCTIONS}.clang_equal_locations (last_loc, {INDEX_FUNCTIONS}.clang_get_null_location)
			then
				print ("Cannot retrieve location %N")
				{EXCEPTIONS}.die (1)
			end

				-- make a range from locations
			if top_loc /= Void and then
				last_loc /= Void then
				l_range := {INDEX_FUNCTIONS}.clang_get_range (top_loc, last_loc)
				if {INDEX_FUNCTIONS}.clang_range_is_null (l_range) then
					print ("Can't retrieve range%N")
					{EXCEPTIONS}.die (1)
				end
			end
			Result := l_range
		end

	show_all_tokens (a_unit: CXTRANSLATION_UNIT_IMPL_STRUCT_API; a_tokens: LIST [CXTOKEN_STRUCT_API])
		local
			l_token: CXTOKEN_STRUCT_API
			kind: INTEGER
			spell: CXSTRING_STRUCT_API
			loc: CXSOURCE_LOCATION_STRUCT_API
			file: POINTER
			line, column, offset: INTEGER
			file_name: CXSTRING_STRUCT_API

		do
			print ("=== Show Tokens ===%N")
			print ("=== Number of Tokens: " + a_tokens.count.out + "%N")
			across a_tokens as ic loop
				l_token := ic.item
				kind := {INDEX_FUNCTIONS}.clang_get_token_kind (l_token)
				spell := {INDEX_FUNCTIONS}.clang_get_token_spelling (a_unit, l_token)
				loc := {INDEX_FUNCTIONS}.clang_get_token_location (a_unit, l_token)

				print ("Token: " + ic.cursor_index.out + "%N")
				if spell /= Void then
					print (" Text: " + {CXSTRING_FUNCTIONS}.clang_get_cstring (spell) + "%N");
				end
				print (" Kind: " + {INDEX_FUNCTIONS}.token_kind_spelling (kind) + "%N");
				if loc /= Void then
					{INDEX_FUNCTIONS}.clang_get_file_location (loc, $file, $line, $column, $offset)
					file_name := {INDEX_FUNCTIONS}.clang_get_file_name (file)
					if file_name /= Void then
						print (" Location: " + {CXSTRING_FUNCTIONS}.clang_get_cstring (file_name) + " " + line.out +
						" " + column.out + " " + offset.out + "%N")
					end
				end
				if attached file_name then
					{CXSTRING_FUNCTIONS}.clang_dispose_string (file_name)
				end
				if attached spell then
					{CXSTRING_FUNCTIONS}.clang_dispose_string (spell);
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

end
