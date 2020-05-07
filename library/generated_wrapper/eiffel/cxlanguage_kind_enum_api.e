-- enum wrapper
class CXLANGUAGE_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxlanguage_invalid or a_value = cxlanguage_c or a_value = cxlanguage_objc or a_value = cxlanguage_cplusplus
		end

	cxlanguage_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLanguage_Invalid"
		end

	cxlanguage_c: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLanguage_C"
		end

	cxlanguage_objc: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLanguage_ObjC"
		end

	cxlanguage_cplusplus: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLanguage_CPlusPlus"
		end

end
