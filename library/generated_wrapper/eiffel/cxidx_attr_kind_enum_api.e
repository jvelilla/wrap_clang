-- enum wrapper
class CXIDX_ATTR_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxidxattr_unexposed or a_value = cxidxattr_ibaction or a_value = cxidxattr_iboutlet or a_value = cxidxattr_iboutletcollection
		end

	cxidxattr_unexposed: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxAttr_Unexposed"
		end

	cxidxattr_ibaction: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxAttr_IBAction"
		end

	cxidxattr_iboutlet: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxAttr_IBOutlet"
		end

	cxidxattr_iboutletcollection: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxAttr_IBOutletCollection"
		end

end
