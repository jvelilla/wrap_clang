-- enum wrapper
class CXLOAD_DIAG_ERROR_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxloaddiag_none or a_value = cxloaddiag_unknown or a_value = cxloaddiag_cannotload or a_value = cxloaddiag_invalidfile
		end

	cxloaddiag_none: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLoadDiag_None"
		end

	cxloaddiag_unknown: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLoadDiag_Unknown"
		end

	cxloaddiag_cannotload: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLoadDiag_CannotLoad"
		end

	cxloaddiag_invalidfile: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLoadDiag_InvalidFile"
		end

end
