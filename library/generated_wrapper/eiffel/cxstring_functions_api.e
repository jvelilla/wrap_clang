note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class CXSTRING_FUNCTIONS_API


feature -- Access

	clang_get_cstring (string: CXSTRING_STRUCT_API): POINTER 
		do
			Result := c_clang_get_cstring (string.item)
		end

	clang_dispose_string (string: CXSTRING_STRUCT_API) 
		do
			c_clang_dispose_string (string.item)
		end

	clang_dispose_string_set (set: CXSTRING_SET_STRUCT_API) 
		do
			c_clang_dispose_string_set (set.item)
		end

feature -- Externals

	c_clang_get_cstring (string: POINTER): POINTER
		external
			"C inline use <Index.h>"
		alias
			"[
				return clang_getCString (*(CXString*)$string);
			]"
		end

	c_clang_dispose_string (string: POINTER)
		external
			"C inline use <Index.h>"
		alias
			"[
				clang_disposeString (*(CXString*)$string);
			]"
		end

	c_clang_dispose_string_set (set: POINTER)
		external
			"C inline use <Index.h>"
		alias
			"[
				clang_disposeStringSet ((CXStringSet*)$set);
			]"
		end

feature -- Externals Address

end
