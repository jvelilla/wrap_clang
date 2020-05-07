-- enum wrapper
class CXLINKAGE_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxlinkage_invalid or a_value = cxlinkage_nolinkage or a_value = cxlinkage_internal or a_value = cxlinkage_uniqueexternal or a_value = cxlinkage_external
		end

	cxlinkage_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLinkage_Invalid"
		end

	cxlinkage_nolinkage: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLinkage_NoLinkage"
		end

	cxlinkage_internal: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLinkage_Internal"
		end

	cxlinkage_uniqueexternal: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLinkage_UniqueExternal"
		end

	cxlinkage_external: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXLinkage_External"
		end

end
