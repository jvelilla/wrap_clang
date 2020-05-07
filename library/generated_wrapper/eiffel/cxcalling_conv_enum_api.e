-- enum wrapper
class CXCALLING_CONV_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxcallingconv_default or a_value = cxcallingconv_c or a_value = cxcallingconv_x86stdcall or a_value = cxcallingconv_x86fastcall or a_value = cxcallingconv_x86thiscall or a_value = cxcallingconv_x86pascal or a_value = cxcallingconv_aapcs or a_value = cxcallingconv_aapcs_vfp or a_value = cxcallingconv_x86regcall or a_value = cxcallingconv_inteloclbicc or a_value = cxcallingconv_win64 or a_value = cxcallingconv_x86_64win64 or a_value = cxcallingconv_x86_64sysv or a_value = cxcallingconv_x86vectorcall or a_value = cxcallingconv_swift or a_value = cxcallingconv_preservemost or a_value = cxcallingconv_preserveall or a_value = cxcallingconv_aarch64vectorcall or a_value = cxcallingconv_invalid or a_value = cxcallingconv_unexposed
		end

	cxcallingconv_default: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_Default"
		end

	cxcallingconv_c: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_C"
		end

	cxcallingconv_x86stdcall: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_X86StdCall"
		end

	cxcallingconv_x86fastcall: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_X86FastCall"
		end

	cxcallingconv_x86thiscall: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_X86ThisCall"
		end

	cxcallingconv_x86pascal: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_X86Pascal"
		end

	cxcallingconv_aapcs: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_AAPCS"
		end

	cxcallingconv_aapcs_vfp: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_AAPCS_VFP"
		end

	cxcallingconv_x86regcall: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_X86RegCall"
		end

	cxcallingconv_inteloclbicc: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_IntelOclBicc"
		end

	cxcallingconv_win64: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_Win64"
		end

	cxcallingconv_x86_64win64: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_X86_64Win64"
		end

	cxcallingconv_x86_64sysv: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_X86_64SysV"
		end

	cxcallingconv_x86vectorcall: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_X86VectorCall"
		end

	cxcallingconv_swift: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_Swift"
		end

	cxcallingconv_preservemost: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_PreserveMost"
		end

	cxcallingconv_preserveall: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_PreserveAll"
		end

	cxcallingconv_aarch64vectorcall: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_AArch64VectorCall"
		end

	cxcallingconv_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_Invalid"
		end

	cxcallingconv_unexposed: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCallingConv_Unexposed"
		end

end
