-- enum wrapper
class CXIDX_ENTITY_CXXTEMPLATE_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxidxentity_nontemplate or a_value = cxidxentity_template or a_value = cxidxentity_templatepartialspecialization or a_value = cxidxentity_templatespecialization
		end

	cxidxentity_nontemplate: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_NonTemplate"
		end

	cxidxentity_template: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Template"
		end

	cxidxentity_templatepartialspecialization: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_TemplatePartialSpecialization"
		end

	cxidxentity_templatespecialization: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_TemplateSpecialization"
		end

end
