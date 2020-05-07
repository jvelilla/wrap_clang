-- enum wrapper
class CXCHILD_VISIT_RESULT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxchildvisit_break or a_value = cxchildvisit_continue or a_value = cxchildvisit_recurse
		end

	cxchildvisit_break: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXChildVisit_Break"
		end

	cxchildvisit_continue: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXChildVisit_Continue"
		end

	cxchildvisit_recurse: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXChildVisit_Recurse"
		end

end
