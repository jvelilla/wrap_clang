-- enum wrapper
class CXPRINTING_POLICY_PROPERTY_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxprintingpolicy_indentation or a_value = cxprintingpolicy_suppressspecifiers or a_value = cxprintingpolicy_suppresstagkeyword or a_value = cxprintingpolicy_includetagdefinition or a_value = cxprintingpolicy_suppressscope or a_value = cxprintingpolicy_suppressunwrittenscope or a_value = cxprintingpolicy_suppressinitializers or a_value = cxprintingpolicy_constantarraysizeaswritten or a_value = cxprintingpolicy_anonymoustaglocations or a_value = cxprintingpolicy_suppressstronglifetime or a_value = cxprintingpolicy_suppresslifetimequalifiers or a_value = cxprintingpolicy_suppresstemplateargsincxxconstructors or a_value = cxprintingpolicy_bool or a_value = cxprintingpolicy_restrict or a_value = cxprintingpolicy_alignof or a_value = cxprintingpolicy_underscorealignof or a_value = cxprintingpolicy_usevoidforzeroparams or a_value = cxprintingpolicy_terseoutput or a_value = cxprintingpolicy_polishfordeclaration or a_value = cxprintingpolicy_half or a_value = cxprintingpolicy_mswchar or a_value = cxprintingpolicy_includenewlines or a_value = cxprintingpolicy_msvcformatting or a_value = cxprintingpolicy_constantsaswritten or a_value = cxprintingpolicy_suppressimplicitbase or a_value = cxprintingpolicy_fullyqualifiedname or a_value = cxprintingpolicy_lastproperty
		end

	cxprintingpolicy_indentation: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_Indentation"
		end

	cxprintingpolicy_suppressspecifiers: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressSpecifiers"
		end

	cxprintingpolicy_suppresstagkeyword: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressTagKeyword"
		end

	cxprintingpolicy_includetagdefinition: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_IncludeTagDefinition"
		end

	cxprintingpolicy_suppressscope: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressScope"
		end

	cxprintingpolicy_suppressunwrittenscope: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressUnwrittenScope"
		end

	cxprintingpolicy_suppressinitializers: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressInitializers"
		end

	cxprintingpolicy_constantarraysizeaswritten: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_ConstantArraySizeAsWritten"
		end

	cxprintingpolicy_anonymoustaglocations: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_AnonymousTagLocations"
		end

	cxprintingpolicy_suppressstronglifetime: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressStrongLifetime"
		end

	cxprintingpolicy_suppresslifetimequalifiers: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressLifetimeQualifiers"
		end

	cxprintingpolicy_suppresstemplateargsincxxconstructors: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors"
		end

	cxprintingpolicy_bool: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_Bool"
		end

	cxprintingpolicy_restrict: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_Restrict"
		end

	cxprintingpolicy_alignof: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_Alignof"
		end

	cxprintingpolicy_underscorealignof: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_UnderscoreAlignof"
		end

	cxprintingpolicy_usevoidforzeroparams: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_UseVoidForZeroParams"
		end

	cxprintingpolicy_terseoutput: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_TerseOutput"
		end

	cxprintingpolicy_polishfordeclaration: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_PolishForDeclaration"
		end

	cxprintingpolicy_half: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_Half"
		end

	cxprintingpolicy_mswchar: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_MSWChar"
		end

	cxprintingpolicy_includenewlines: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_IncludeNewlines"
		end

	cxprintingpolicy_msvcformatting: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_MSVCFormatting"
		end

	cxprintingpolicy_constantsaswritten: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_ConstantsAsWritten"
		end

	cxprintingpolicy_suppressimplicitbase: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_SuppressImplicitBase"
		end

	cxprintingpolicy_fullyqualifiedname: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_FullyQualifiedName"
		end

	cxprintingpolicy_lastproperty: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXPrintingPolicy_LastProperty"
		end

end
