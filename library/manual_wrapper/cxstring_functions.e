note
	description: "Summary description for {CXSTRING_FUNCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CXSTRING_FUNCTIONS

inherit

	CXSTRING_FUNCTIONS_API
		rename
			clang_get_cstring as clang_get_cstring_api,
			clang_dispose_string as clang_dispose_string_api
		end


feature -- Access

	clang_get_cstring (string: CXSTRING_STRUCT_API): STRING
		local
			l_ptr: POINTER
		do
			l_ptr := c_clang_get_cstring (string.item)
			Result :="Unknown"
			if l_ptr /= default_pointer then
				create Result.make_from_c (l_ptr)
			end
		ensure
			instance_free: class
		end

	clang_dispose_string (string: CXSTRING_STRUCT_API)
		do
			c_clang_dispose_string (string.item)
		ensure
			instance_free: class
		end

end
