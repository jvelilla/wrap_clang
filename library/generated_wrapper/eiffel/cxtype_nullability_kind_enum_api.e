-- enum wrapper
class CXTYPE_NULLABILITY_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxtypenullability_nonnull or a_value = cxtypenullability_nullable or a_value = cxtypenullability_unspecified or a_value = cxtypenullability_invalid
		end

	cxtypenullability_nonnull: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTypeNullability_NonNull"
		end

	cxtypenullability_nullable: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTypeNullability_Nullable"
		end

	cxtypenullability_unspecified: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTypeNullability_Unspecified"
		end

	cxtypenullability_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTypeNullability_Invalid"
		end

end
