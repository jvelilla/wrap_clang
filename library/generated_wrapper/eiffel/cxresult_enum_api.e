-- enum wrapper
class CXRESULT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxresult_success or a_value = cxresult_invalid or a_value = cxresult_visitbreak
		end

	cxresult_success: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXResult_Success"
		end

	cxresult_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXResult_Invalid"
		end

	cxresult_visitbreak: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXResult_VisitBreak"
		end

end
