-- enum wrapper
class CX_STORAGE_CLASS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cx_sc_invalid or a_value = cx_sc_none or a_value = cx_sc_extern or a_value = cx_sc_static or a_value = cx_sc_privateextern or a_value = cx_sc_openclworkgrouplocal or a_value = cx_sc_auto or a_value = cx_sc_register
		end

	cx_sc_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_SC_Invalid"
		end

	cx_sc_none: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_SC_None"
		end

	cx_sc_extern: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_SC_Extern"
		end

	cx_sc_static: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_SC_Static"
		end

	cx_sc_privateextern: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_SC_PrivateExtern"
		end

	cx_sc_openclworkgrouplocal: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_SC_OpenCLWorkGroupLocal"
		end

	cx_sc_auto: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_SC_Auto"
		end

	cx_sc_register: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CX_SC_Register"
		end

end
