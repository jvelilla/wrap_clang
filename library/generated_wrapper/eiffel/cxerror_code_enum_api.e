-- enum wrapper
class CXERROR_CODE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxerror_success or a_value = cxerror_failure or a_value = cxerror_crashed or a_value = cxerror_invalidarguments or a_value = cxerror_astreaderror
		end

	cxerror_success: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXError_Success"
		end

	cxerror_failure: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXError_Failure"
		end

	cxerror_crashed: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXError_Crashed"
		end

	cxerror_invalidarguments: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXError_InvalidArguments"
		end

	cxerror_astreaderror: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXError_ASTReadError"
		end

end
