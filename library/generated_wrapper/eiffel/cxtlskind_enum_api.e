-- enum wrapper
class CXTLSKIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxtls_none or a_value = cxtls_dynamic or a_value = cxtls_static
		end

	cxtls_none: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTLS_None"
		end

	cxtls_dynamic: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTLS_Dynamic"
		end

	cxtls_static: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTLS_Static"
		end

end
