-- enum wrapper
class CXREF_QUALIFIER_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxrefqualifier_none or a_value = cxrefqualifier_lvalue or a_value = cxrefqualifier_rvalue
		end

	cxrefqualifier_none: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXRefQualifier_None"
		end

	cxrefqualifier_lvalue: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXRefQualifier_LValue"
		end

	cxrefqualifier_rvalue: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXRefQualifier_RValue"
		end

end
