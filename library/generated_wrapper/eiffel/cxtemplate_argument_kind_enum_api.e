-- enum wrapper
class CXTEMPLATE_ARGUMENT_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxtemplateargumentkind_null or a_value = cxtemplateargumentkind_type or a_value = cxtemplateargumentkind_declaration or a_value = cxtemplateargumentkind_nullptr or a_value = cxtemplateargumentkind_integral or a_value = cxtemplateargumentkind_template or a_value = cxtemplateargumentkind_templateexpansion or a_value = cxtemplateargumentkind_expression or a_value = cxtemplateargumentkind_pack or a_value = cxtemplateargumentkind_invalid
		end

	cxtemplateargumentkind_null: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_Null"
		end

	cxtemplateargumentkind_type: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_Type"
		end

	cxtemplateargumentkind_declaration: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_Declaration"
		end

	cxtemplateargumentkind_nullptr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_NullPtr"
		end

	cxtemplateargumentkind_integral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_Integral"
		end

	cxtemplateargumentkind_template: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_Template"
		end

	cxtemplateargumentkind_templateexpansion: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_TemplateExpansion"
		end

	cxtemplateargumentkind_expression: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_Expression"
		end

	cxtemplateargumentkind_pack: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_Pack"
		end

	cxtemplateargumentkind_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTemplateArgumentKind_Invalid"
		end

end
