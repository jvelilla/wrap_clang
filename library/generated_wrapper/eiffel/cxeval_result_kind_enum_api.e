-- enum wrapper
class CXEVAL_RESULT_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxeval_int or a_value = cxeval_float or a_value = cxeval_objcstrliteral or a_value = cxeval_strliteral or a_value = cxeval_cfstr or a_value = cxeval_other or a_value = cxeval_unexposed
		end

	cxeval_int: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXEval_Int"
		end

	cxeval_float: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXEval_Float"
		end

	cxeval_objcstrliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXEval_ObjCStrLiteral"
		end

	cxeval_strliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXEval_StrLiteral"
		end

	cxeval_cfstr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXEval_CFStr"
		end

	cxeval_other: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXEval_Other"
		end

	cxeval_unexposed: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXEval_UnExposed"
		end

end
