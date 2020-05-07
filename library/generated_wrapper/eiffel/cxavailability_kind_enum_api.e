-- enum wrapper
class CXAVAILABILITY_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxavailability_available or a_value = cxavailability_deprecated or a_value = cxavailability_notavailable or a_value = cxavailability_notaccessible
		end

	cxavailability_available: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXAvailability_Available"
		end

	cxavailability_deprecated: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXAvailability_Deprecated"
		end

	cxavailability_notavailable: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXAvailability_NotAvailable"
		end

	cxavailability_notaccessible: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXAvailability_NotAccessible"
		end

end
