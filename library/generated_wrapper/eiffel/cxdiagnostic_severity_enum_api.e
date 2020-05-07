-- enum wrapper
class CXDIAGNOSTIC_SEVERITY_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxdiagnostic_ignored or a_value = cxdiagnostic_note or a_value = cxdiagnostic_warning or a_value = cxdiagnostic_error or a_value = cxdiagnostic_fatal
		end

	cxdiagnostic_ignored: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXDiagnostic_Ignored"
		end

	cxdiagnostic_note: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXDiagnostic_Note"
		end

	cxdiagnostic_warning: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXDiagnostic_Warning"
		end

	cxdiagnostic_error: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXDiagnostic_Error"
		end

	cxdiagnostic_fatal: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXDiagnostic_Fatal"
		end

end
