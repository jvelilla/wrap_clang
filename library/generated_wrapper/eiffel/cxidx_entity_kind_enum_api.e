-- enum wrapper
class CXIDX_ENTITY_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxidxentity_unexposed or a_value = cxidxentity_typedef or a_value = cxidxentity_function or a_value = cxidxentity_variable or a_value = cxidxentity_field or a_value = cxidxentity_enumconstant or a_value = cxidxentity_objcclass or a_value = cxidxentity_objcprotocol or a_value = cxidxentity_objccategory or a_value = cxidxentity_objcinstancemethod or a_value = cxidxentity_objcclassmethod or a_value = cxidxentity_objcproperty or a_value = cxidxentity_objcivar or a_value = cxidxentity_enum or a_value = cxidxentity_struct or a_value = cxidxentity_union or a_value = cxidxentity_cxxclass or a_value = cxidxentity_cxxnamespace or a_value = cxidxentity_cxxnamespacealias or a_value = cxidxentity_cxxstaticvariable or a_value = cxidxentity_cxxstaticmethod or a_value = cxidxentity_cxxinstancemethod or a_value = cxidxentity_cxxconstructor or a_value = cxidxentity_cxxdestructor or a_value = cxidxentity_cxxconversionfunction or a_value = cxidxentity_cxxtypealias or a_value = cxidxentity_cxxinterface
		end

	cxidxentity_unexposed: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Unexposed"
		end

	cxidxentity_typedef: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Typedef"
		end

	cxidxentity_function: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Function"
		end

	cxidxentity_variable: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Variable"
		end

	cxidxentity_field: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Field"
		end

	cxidxentity_enumconstant: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_EnumConstant"
		end

	cxidxentity_objcclass: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_ObjCClass"
		end

	cxidxentity_objcprotocol: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_ObjCProtocol"
		end

	cxidxentity_objccategory: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_ObjCCategory"
		end

	cxidxentity_objcinstancemethod: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_ObjCInstanceMethod"
		end

	cxidxentity_objcclassmethod: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_ObjCClassMethod"
		end

	cxidxentity_objcproperty: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_ObjCProperty"
		end

	cxidxentity_objcivar: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_ObjCIvar"
		end

	cxidxentity_enum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Enum"
		end

	cxidxentity_struct: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Struct"
		end

	cxidxentity_union: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_Union"
		end

	cxidxentity_cxxclass: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXClass"
		end

	cxidxentity_cxxnamespace: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXNamespace"
		end

	cxidxentity_cxxnamespacealias: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXNamespaceAlias"
		end

	cxidxentity_cxxstaticvariable: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXStaticVariable"
		end

	cxidxentity_cxxstaticmethod: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXStaticMethod"
		end

	cxidxentity_cxxinstancemethod: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXInstanceMethod"
		end

	cxidxentity_cxxconstructor: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXConstructor"
		end

	cxidxentity_cxxdestructor: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXDestructor"
		end

	cxidxentity_cxxconversionfunction: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXConversionFunction"
		end

	cxidxentity_cxxtypealias: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXTypeAlias"
		end

	cxidxentity_cxxinterface: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxEntity_CXXInterface"
		end

end
