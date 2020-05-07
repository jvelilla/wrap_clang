-- enum wrapper
class CXIDX_ENTITY_LANGUAGE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxidxentitylang_none or a_value = cxidxentitylang_c or a_value = cxidxentitylang_objc or a_value = cxidxentitylang_cxx or a_value = cxidxentitylang_swift
		end

	cxidxentitylang_none: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntityLang_None"
		end

	cxidxentitylang_c: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntityLang_C"
		end

	cxidxentitylang_objc: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntityLang_ObjC"
		end

	cxidxentitylang_cxx: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntityLang_CXX"
		end

	cxidxentitylang_swift: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntityLang_Swift"
		end

end
