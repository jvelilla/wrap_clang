-- enum wrapper
class CXVISIBILITY_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxvisibility_invalid or a_value = cxvisibility_hidden or a_value = cxvisibility_protected or a_value = cxvisibility_default
		end

	cxvisibility_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXVisibility_Invalid"
		end

	cxvisibility_hidden: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXVisibility_Hidden"
		end

	cxvisibility_protected: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXVisibility_Protected"
		end

	cxvisibility_default: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXVisibility_Default"
		end

end
