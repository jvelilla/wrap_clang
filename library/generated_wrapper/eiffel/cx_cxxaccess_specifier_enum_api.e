-- enum wrapper
class CX_CXXACCESS_SPECIFIER_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cx_cxxinvalidaccessspecifier or a_value = cx_cxxpublic or a_value = cx_cxxprotected or a_value = cx_cxxprivate
		end

	cx_cxxinvalidaccessspecifier: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_CXXInvalidAccessSpecifier"
		end

	cx_cxxpublic: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_CXXPublic"
		end

	cx_cxxprotected: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_CXXProtected"
		end

	cx_cxxprivate: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_CXXPrivate"
		end

end
