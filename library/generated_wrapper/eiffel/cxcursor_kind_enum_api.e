-- enum wrapper
class CXCURSOR_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxcursor_unexposeddecl or a_value = cxcursor_structdecl or a_value = cxcursor_uniondecl or a_value = cxcursor_classdecl or a_value = cxcursor_enumdecl or a_value = cxcursor_fielddecl or a_value = cxcursor_enumconstantdecl or a_value = cxcursor_functiondecl or a_value = cxcursor_vardecl or a_value = cxcursor_parmdecl or a_value = cxcursor_objcinterfacedecl or a_value = cxcursor_objccategorydecl or a_value = cxcursor_objcprotocoldecl or a_value = cxcursor_objcpropertydecl or a_value = cxcursor_objcivardecl or a_value = cxcursor_objcinstancemethoddecl or a_value = cxcursor_objcclassmethoddecl or a_value = cxcursor_objcimplementationdecl or a_value = cxcursor_objccategoryimpldecl or a_value = cxcursor_typedefdecl or a_value = cxcursor_cxxmethod or a_value = cxcursor_namespace or a_value = cxcursor_linkagespec or a_value = cxcursor_constructor or a_value = cxcursor_destructor or a_value = cxcursor_conversionfunction or a_value = cxcursor_templatetypeparameter or a_value = cxcursor_nontypetemplateparameter or a_value = cxcursor_templatetemplateparameter or a_value = cxcursor_functiontemplate or a_value = cxcursor_classtemplate or a_value = cxcursor_classtemplatepartialspecialization or a_value = cxcursor_namespacealias or a_value = cxcursor_usingdirective or a_value = cxcursor_usingdeclaration or a_value = cxcursor_typealiasdecl or a_value = cxcursor_objcsynthesizedecl or a_value = cxcursor_objcdynamicdecl or a_value = cxcursor_cxxaccessspecifier or a_value = cxcursor_firstdecl or a_value = cxcursor_lastdecl or a_value = cxcursor_firstref or a_value = cxcursor_objcsuperclassref or a_value = cxcursor_objcprotocolref or a_value = cxcursor_objcclassref or a_value = cxcursor_typeref or a_value = cxcursor_cxxbasespecifier or a_value = cxcursor_templateref or a_value = cxcursor_namespaceref or a_value = cxcursor_memberref or a_value = cxcursor_labelref or a_value = cxcursor_overloadeddeclref or a_value = cxcursor_variableref or a_value = cxcursor_lastref or a_value = cxcursor_firstinvalid or a_value = cxcursor_invalidfile or a_value = cxcursor_nodeclfound or a_value = cxcursor_notimplemented or a_value = cxcursor_invalidcode or a_value = cxcursor_lastinvalid or a_value = cxcursor_firstexpr or a_value = cxcursor_unexposedexpr or a_value = cxcursor_declrefexpr or a_value = cxcursor_memberrefexpr or a_value = cxcursor_callexpr or a_value = cxcursor_objcmessageexpr or a_value = cxcursor_blockexpr or a_value = cxcursor_integerliteral or a_value = cxcursor_floatingliteral or a_value = cxcursor_imaginaryliteral or a_value = cxcursor_stringliteral or a_value = cxcursor_characterliteral or a_value = cxcursor_parenexpr or a_value = cxcursor_unaryoperator or a_value = cxcursor_arraysubscriptexpr or a_value = cxcursor_binaryoperator or a_value = cxcursor_compoundassignoperator or a_value = cxcursor_conditionaloperator or a_value = cxcursor_cstylecastexpr or a_value = cxcursor_compoundliteralexpr or a_value = cxcursor_initlistexpr or a_value = cxcursor_addrlabelexpr or a_value = cxcursor_stmtexpr or a_value = cxcursor_genericselectionexpr or a_value = cxcursor_gnunullexpr or a_value = cxcursor_cxxstaticcastexpr or a_value = cxcursor_cxxdynamiccastexpr or a_value = cxcursor_cxxreinterpretcastexpr or a_value = cxcursor_cxxconstcastexpr or a_value = cxcursor_cxxfunctionalcastexpr or a_value = cxcursor_cxxtypeidexpr or a_value = cxcursor_cxxboolliteralexpr or a_value = cxcursor_cxxnullptrliteralexpr or a_value = cxcursor_cxxthisexpr or a_value = cxcursor_cxxthrowexpr or a_value = cxcursor_cxxnewexpr or a_value = cxcursor_cxxdeleteexpr or a_value = cxcursor_unaryexpr or a_value = cxcursor_objcstringliteral or a_value = cxcursor_objcencodeexpr or a_value = cxcursor_objcselectorexpr or a_value = cxcursor_objcprotocolexpr or a_value = cxcursor_objcbridgedcastexpr or a_value = cxcursor_packexpansionexpr or a_value = cxcursor_sizeofpackexpr or a_value = cxcursor_lambdaexpr or a_value = cxcursor_objcboolliteralexpr or a_value = cxcursor_objcselfexpr or a_value = cxcursor_omparraysectionexpr or a_value = cxcursor_objcavailabilitycheckexpr or a_value = cxcursor_fixedpointliteral or a_value = cxcursor_lastexpr or a_value = cxcursor_firststmt or a_value = cxcursor_unexposedstmt or a_value = cxcursor_labelstmt or a_value = cxcursor_compoundstmt or a_value = cxcursor_casestmt or a_value = cxcursor_defaultstmt or a_value = cxcursor_ifstmt or a_value = cxcursor_switchstmt or a_value = cxcursor_whilestmt or a_value = cxcursor_dostmt or a_value = cxcursor_forstmt or a_value = cxcursor_gotostmt or a_value = cxcursor_indirectgotostmt or a_value = cxcursor_continuestmt or a_value = cxcursor_breakstmt or a_value = cxcursor_returnstmt or a_value = cxcursor_gccasmstmt or a_value = cxcursor_asmstmt or a_value = cxcursor_objcattrystmt or a_value = cxcursor_objcatcatchstmt or a_value = cxcursor_objcatfinallystmt or a_value = cxcursor_objcatthrowstmt or a_value = cxcursor_objcatsynchronizedstmt or a_value = cxcursor_objcautoreleasepoolstmt or a_value = cxcursor_objcforcollectionstmt or a_value = cxcursor_cxxcatchstmt or a_value = cxcursor_cxxtrystmt or a_value = cxcursor_cxxforrangestmt or a_value = cxcursor_sehtrystmt or a_value = cxcursor_sehexceptstmt or a_value = cxcursor_sehfinallystmt or a_value = cxcursor_msasmstmt or a_value = cxcursor_nullstmt or a_value = cxcursor_declstmt or a_value = cxcursor_ompparalleldirective or a_value = cxcursor_ompsimddirective or a_value = cxcursor_ompfordirective or a_value = cxcursor_ompsectionsdirective or a_value = cxcursor_ompsectiondirective or a_value = cxcursor_ompsingledirective or a_value = cxcursor_ompparallelfordirective or a_value = cxcursor_ompparallelsectionsdirective or a_value = cxcursor_omptaskdirective or a_value = cxcursor_ompmasterdirective or a_value = cxcursor_ompcriticaldirective or a_value = cxcursor_omptaskyielddirective or a_value = cxcursor_ompbarrierdirective or a_value = cxcursor_omptaskwaitdirective or a_value = cxcursor_ompflushdirective or a_value = cxcursor_sehleavestmt or a_value = cxcursor_ompordereddirective or a_value = cxcursor_ompatomicdirective or a_value = cxcursor_ompforsimddirective or a_value = cxcursor_ompparallelforsimddirective or a_value = cxcursor_omptargetdirective or a_value = cxcursor_ompteamsdirective or a_value = cxcursor_omptaskgroupdirective or a_value = cxcursor_ompcancellationpointdirective or a_value = cxcursor_ompcanceldirective or a_value = cxcursor_omptargetdatadirective or a_value = cxcursor_omptaskloopdirective or a_value = cxcursor_omptaskloopsimddirective or a_value = cxcursor_ompdistributedirective or a_value = cxcursor_omptargetenterdatadirective or a_value = cxcursor_omptargetexitdatadirective or a_value = cxcursor_omptargetparalleldirective or a_value = cxcursor_omptargetparallelfordirective or a_value = cxcursor_omptargetupdatedirective or a_value = cxcursor_ompdistributeparallelfordirective or a_value = cxcursor_ompdistributeparallelforsimddirective or a_value = cxcursor_ompdistributesimddirective or a_value = cxcursor_omptargetparallelforsimddirective or a_value = cxcursor_omptargetsimddirective or a_value = cxcursor_ompteamsdistributedirective or a_value = cxcursor_ompteamsdistributesimddirective or a_value = cxcursor_ompteamsdistributeparallelforsimddirective or a_value = cxcursor_ompteamsdistributeparallelfordirective or a_value = cxcursor_omptargetteamsdirective or a_value = cxcursor_omptargetteamsdistributedirective or a_value = cxcursor_omptargetteamsdistributeparallelfordirective or a_value = cxcursor_omptargetteamsdistributeparallelforsimddirective or a_value = cxcursor_omptargetteamsdistributesimddirective or a_value = cxcursor_builtinbitcastexpr or a_value = cxcursor_ompmastertaskloopdirective or a_value = cxcursor_ompparallelmastertaskloopdirective or a_value = cxcursor_ompmastertaskloopsimddirective or a_value = cxcursor_ompparallelmastertaskloopsimddirective or a_value = cxcursor_ompparallelmasterdirective or a_value = cxcursor_laststmt or a_value = cxcursor_translationunit or a_value = cxcursor_firstattr or a_value = cxcursor_unexposedattr or a_value = cxcursor_ibactionattr or a_value = cxcursor_iboutletattr or a_value = cxcursor_iboutletcollectionattr or a_value = cxcursor_cxxfinalattr or a_value = cxcursor_cxxoverrideattr or a_value = cxcursor_annotateattr or a_value = cxcursor_asmlabelattr or a_value = cxcursor_packedattr or a_value = cxcursor_pureattr or a_value = cxcursor_constattr or a_value = cxcursor_noduplicateattr or a_value = cxcursor_cudaconstantattr or a_value = cxcursor_cudadeviceattr or a_value = cxcursor_cudaglobalattr or a_value = cxcursor_cudahostattr or a_value = cxcursor_cudasharedattr or a_value = cxcursor_visibilityattr or a_value = cxcursor_dllexport or a_value = cxcursor_dllimport or a_value = cxcursor_nsreturnsretained or a_value = cxcursor_nsreturnsnotretained or a_value = cxcursor_nsreturnsautoreleased or a_value = cxcursor_nsconsumesself or a_value = cxcursor_nsconsumed or a_value = cxcursor_objcexception or a_value = cxcursor_objcnsobject or a_value = cxcursor_objcindependentclass or a_value = cxcursor_objcpreciselifetime or a_value = cxcursor_objcreturnsinnerpointer or a_value = cxcursor_objcrequiressuper or a_value = cxcursor_objcrootclass or a_value = cxcursor_objcsubclassingrestricted or a_value = cxcursor_objcexplicitprotocolimpl or a_value = cxcursor_objcdesignatedinitializer or a_value = cxcursor_objcruntimevisible or a_value = cxcursor_objcboxable or a_value = cxcursor_flagenum or a_value = cxcursor_convergentattr or a_value = cxcursor_warnunusedattr or a_value = cxcursor_warnunusedresultattr or a_value = cxcursor_alignedattr or a_value = cxcursor_lastattr or a_value = cxcursor_preprocessingdirective or a_value = cxcursor_macrodefinition or a_value = cxcursor_macroexpansion or a_value = cxcursor_macroinstantiation or a_value = cxcursor_inclusiondirective or a_value = cxcursor_firstpreprocessing or a_value = cxcursor_lastpreprocessing or a_value = cxcursor_moduleimportdecl or a_value = cxcursor_typealiastemplatedecl or a_value = cxcursor_staticassert or a_value = cxcursor_frienddecl or a_value = cxcursor_firstextradecl or a_value = cxcursor_lastextradecl or a_value = cxcursor_overloadcandidate
		end

	cxcursor_unexposeddecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UnexposedDecl"
		end

	cxcursor_structdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_StructDecl"
		end

	cxcursor_uniondecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UnionDecl"
		end

	cxcursor_classdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ClassDecl"
		end

	cxcursor_enumdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_EnumDecl"
		end

	cxcursor_fielddecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FieldDecl"
		end

	cxcursor_enumconstantdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_EnumConstantDecl"
		end

	cxcursor_functiondecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FunctionDecl"
		end

	cxcursor_vardecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_VarDecl"
		end

	cxcursor_parmdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ParmDecl"
		end

	cxcursor_objcinterfacedecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCInterfaceDecl"
		end

	cxcursor_objccategorydecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCCategoryDecl"
		end

	cxcursor_objcprotocoldecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCProtocolDecl"
		end

	cxcursor_objcpropertydecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCPropertyDecl"
		end

	cxcursor_objcivardecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCIvarDecl"
		end

	cxcursor_objcinstancemethoddecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCInstanceMethodDecl"
		end

	cxcursor_objcclassmethoddecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCClassMethodDecl"
		end

	cxcursor_objcimplementationdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCImplementationDecl"
		end

	cxcursor_objccategoryimpldecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCCategoryImplDecl"
		end

	cxcursor_typedefdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_TypedefDecl"
		end

	cxcursor_cxxmethod: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXMethod"
		end

	cxcursor_namespace: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_Namespace"
		end

	cxcursor_linkagespec: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LinkageSpec"
		end

	cxcursor_constructor: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_Constructor"
		end

	cxcursor_destructor: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_Destructor"
		end

	cxcursor_conversionfunction: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ConversionFunction"
		end

	cxcursor_templatetypeparameter: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_TemplateTypeParameter"
		end

	cxcursor_nontypetemplateparameter: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NonTypeTemplateParameter"
		end

	cxcursor_templatetemplateparameter: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_TemplateTemplateParameter"
		end

	cxcursor_functiontemplate: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FunctionTemplate"
		end

	cxcursor_classtemplate: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ClassTemplate"
		end

	cxcursor_classtemplatepartialspecialization: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ClassTemplatePartialSpecialization"
		end

	cxcursor_namespacealias: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NamespaceAlias"
		end

	cxcursor_usingdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UsingDirective"
		end

	cxcursor_usingdeclaration: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UsingDeclaration"
		end

	cxcursor_typealiasdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_TypeAliasDecl"
		end

	cxcursor_objcsynthesizedecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCSynthesizeDecl"
		end

	cxcursor_objcdynamicdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCDynamicDecl"
		end

	cxcursor_cxxaccessspecifier: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXAccessSpecifier"
		end

	cxcursor_firstdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FirstDecl"
		end

	cxcursor_lastdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LastDecl"
		end

	cxcursor_firstref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FirstRef"
		end

	cxcursor_objcsuperclassref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCSuperClassRef"
		end

	cxcursor_objcprotocolref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCProtocolRef"
		end

	cxcursor_objcclassref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCClassRef"
		end

	cxcursor_typeref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_TypeRef"
		end

	cxcursor_cxxbasespecifier: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXBaseSpecifier"
		end

	cxcursor_templateref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_TemplateRef"
		end

	cxcursor_namespaceref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NamespaceRef"
		end

	cxcursor_memberref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_MemberRef"
		end

	cxcursor_labelref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LabelRef"
		end

	cxcursor_overloadeddeclref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OverloadedDeclRef"
		end

	cxcursor_variableref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_VariableRef"
		end

	cxcursor_lastref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LastRef"
		end

	cxcursor_firstinvalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FirstInvalid"
		end

	cxcursor_invalidfile: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_InvalidFile"
		end

	cxcursor_nodeclfound: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NoDeclFound"
		end

	cxcursor_notimplemented: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NotImplemented"
		end

	cxcursor_invalidcode: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_InvalidCode"
		end

	cxcursor_lastinvalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LastInvalid"
		end

	cxcursor_firstexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FirstExpr"
		end

	cxcursor_unexposedexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UnexposedExpr"
		end

	cxcursor_declrefexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_DeclRefExpr"
		end

	cxcursor_memberrefexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_MemberRefExpr"
		end

	cxcursor_callexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CallExpr"
		end

	cxcursor_objcmessageexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCMessageExpr"
		end

	cxcursor_blockexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_BlockExpr"
		end

	cxcursor_integerliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_IntegerLiteral"
		end

	cxcursor_floatingliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FloatingLiteral"
		end

	cxcursor_imaginaryliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ImaginaryLiteral"
		end

	cxcursor_stringliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_StringLiteral"
		end

	cxcursor_characterliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CharacterLiteral"
		end

	cxcursor_parenexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ParenExpr"
		end

	cxcursor_unaryoperator: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UnaryOperator"
		end

	cxcursor_arraysubscriptexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ArraySubscriptExpr"
		end

	cxcursor_binaryoperator: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_BinaryOperator"
		end

	cxcursor_compoundassignoperator: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CompoundAssignOperator"
		end

	cxcursor_conditionaloperator: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ConditionalOperator"
		end

	cxcursor_cstylecastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CStyleCastExpr"
		end

	cxcursor_compoundliteralexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CompoundLiteralExpr"
		end

	cxcursor_initlistexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_InitListExpr"
		end

	cxcursor_addrlabelexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_AddrLabelExpr"
		end

	cxcursor_stmtexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_StmtExpr"
		end

	cxcursor_genericselectionexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_GenericSelectionExpr"
		end

	cxcursor_gnunullexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_GNUNullExpr"
		end

	cxcursor_cxxstaticcastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXStaticCastExpr"
		end

	cxcursor_cxxdynamiccastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXDynamicCastExpr"
		end

	cxcursor_cxxreinterpretcastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXReinterpretCastExpr"
		end

	cxcursor_cxxconstcastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXConstCastExpr"
		end

	cxcursor_cxxfunctionalcastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXFunctionalCastExpr"
		end

	cxcursor_cxxtypeidexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXTypeidExpr"
		end

	cxcursor_cxxboolliteralexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXBoolLiteralExpr"
		end

	cxcursor_cxxnullptrliteralexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXNullPtrLiteralExpr"
		end

	cxcursor_cxxthisexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXThisExpr"
		end

	cxcursor_cxxthrowexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXThrowExpr"
		end

	cxcursor_cxxnewexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXNewExpr"
		end

	cxcursor_cxxdeleteexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXDeleteExpr"
		end

	cxcursor_unaryexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UnaryExpr"
		end

	cxcursor_objcstringliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCStringLiteral"
		end

	cxcursor_objcencodeexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCEncodeExpr"
		end

	cxcursor_objcselectorexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCSelectorExpr"
		end

	cxcursor_objcprotocolexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCProtocolExpr"
		end

	cxcursor_objcbridgedcastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCBridgedCastExpr"
		end

	cxcursor_packexpansionexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_PackExpansionExpr"
		end

	cxcursor_sizeofpackexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_SizeOfPackExpr"
		end

	cxcursor_lambdaexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LambdaExpr"
		end

	cxcursor_objcboolliteralexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCBoolLiteralExpr"
		end

	cxcursor_objcselfexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCSelfExpr"
		end

	cxcursor_omparraysectionexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPArraySectionExpr"
		end

	cxcursor_objcavailabilitycheckexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCAvailabilityCheckExpr"
		end

	cxcursor_fixedpointliteral: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FixedPointLiteral"
		end

	cxcursor_lastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LastExpr"
		end

	cxcursor_firststmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FirstStmt"
		end

	cxcursor_unexposedstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UnexposedStmt"
		end

	cxcursor_labelstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LabelStmt"
		end

	cxcursor_compoundstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CompoundStmt"
		end

	cxcursor_casestmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CaseStmt"
		end

	cxcursor_defaultstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_DefaultStmt"
		end

	cxcursor_ifstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_IfStmt"
		end

	cxcursor_switchstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_SwitchStmt"
		end

	cxcursor_whilestmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_WhileStmt"
		end

	cxcursor_dostmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_DoStmt"
		end

	cxcursor_forstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ForStmt"
		end

	cxcursor_gotostmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_GotoStmt"
		end

	cxcursor_indirectgotostmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_IndirectGotoStmt"
		end

	cxcursor_continuestmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ContinueStmt"
		end

	cxcursor_breakstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_BreakStmt"
		end

	cxcursor_returnstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ReturnStmt"
		end

	cxcursor_gccasmstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_GCCAsmStmt"
		end

	cxcursor_asmstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_AsmStmt"
		end

	cxcursor_objcattrystmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCAtTryStmt"
		end

	cxcursor_objcatcatchstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCAtCatchStmt"
		end

	cxcursor_objcatfinallystmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCAtFinallyStmt"
		end

	cxcursor_objcatthrowstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCAtThrowStmt"
		end

	cxcursor_objcatsynchronizedstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCAtSynchronizedStmt"
		end

	cxcursor_objcautoreleasepoolstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCAutoreleasePoolStmt"
		end

	cxcursor_objcforcollectionstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCForCollectionStmt"
		end

	cxcursor_cxxcatchstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXCatchStmt"
		end

	cxcursor_cxxtrystmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXTryStmt"
		end

	cxcursor_cxxforrangestmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXForRangeStmt"
		end

	cxcursor_sehtrystmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_SEHTryStmt"
		end

	cxcursor_sehexceptstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_SEHExceptStmt"
		end

	cxcursor_sehfinallystmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_SEHFinallyStmt"
		end

	cxcursor_msasmstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_MSAsmStmt"
		end

	cxcursor_nullstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NullStmt"
		end

	cxcursor_declstmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_DeclStmt"
		end

	cxcursor_ompparalleldirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPParallelDirective"
		end

	cxcursor_ompsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPSimdDirective"
		end

	cxcursor_ompfordirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPForDirective"
		end

	cxcursor_ompsectionsdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPSectionsDirective"
		end

	cxcursor_ompsectiondirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPSectionDirective"
		end

	cxcursor_ompsingledirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPSingleDirective"
		end

	cxcursor_ompparallelfordirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPParallelForDirective"
		end

	cxcursor_ompparallelsectionsdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPParallelSectionsDirective"
		end

	cxcursor_omptaskdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTaskDirective"
		end

	cxcursor_ompmasterdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPMasterDirective"
		end

	cxcursor_ompcriticaldirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPCriticalDirective"
		end

	cxcursor_omptaskyielddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTaskyieldDirective"
		end

	cxcursor_ompbarrierdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPBarrierDirective"
		end

	cxcursor_omptaskwaitdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTaskwaitDirective"
		end

	cxcursor_ompflushdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPFlushDirective"
		end

	cxcursor_sehleavestmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_SEHLeaveStmt"
		end

	cxcursor_ompordereddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPOrderedDirective"
		end

	cxcursor_ompatomicdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPAtomicDirective"
		end

	cxcursor_ompforsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPForSimdDirective"
		end

	cxcursor_ompparallelforsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPParallelForSimdDirective"
		end

	cxcursor_omptargetdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetDirective"
		end

	cxcursor_ompteamsdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTeamsDirective"
		end

	cxcursor_omptaskgroupdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTaskgroupDirective"
		end

	cxcursor_ompcancellationpointdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPCancellationPointDirective"
		end

	cxcursor_ompcanceldirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPCancelDirective"
		end

	cxcursor_omptargetdatadirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetDataDirective"
		end

	cxcursor_omptaskloopdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTaskLoopDirective"
		end

	cxcursor_omptaskloopsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTaskLoopSimdDirective"
		end

	cxcursor_ompdistributedirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPDistributeDirective"
		end

	cxcursor_omptargetenterdatadirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetEnterDataDirective"
		end

	cxcursor_omptargetexitdatadirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetExitDataDirective"
		end

	cxcursor_omptargetparalleldirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetParallelDirective"
		end

	cxcursor_omptargetparallelfordirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetParallelForDirective"
		end

	cxcursor_omptargetupdatedirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetUpdateDirective"
		end

	cxcursor_ompdistributeparallelfordirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPDistributeParallelForDirective"
		end

	cxcursor_ompdistributeparallelforsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPDistributeParallelForSimdDirective"
		end

	cxcursor_ompdistributesimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPDistributeSimdDirective"
		end

	cxcursor_omptargetparallelforsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetParallelForSimdDirective"
		end

	cxcursor_omptargetsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetSimdDirective"
		end

	cxcursor_ompteamsdistributedirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTeamsDistributeDirective"
		end

	cxcursor_ompteamsdistributesimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTeamsDistributeSimdDirective"
		end

	cxcursor_ompteamsdistributeparallelforsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTeamsDistributeParallelForSimdDirective"
		end

	cxcursor_ompteamsdistributeparallelfordirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTeamsDistributeParallelForDirective"
		end

	cxcursor_omptargetteamsdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetTeamsDirective"
		end

	cxcursor_omptargetteamsdistributedirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetTeamsDistributeDirective"
		end

	cxcursor_omptargetteamsdistributeparallelfordirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetTeamsDistributeParallelForDirective"
		end

	cxcursor_omptargetteamsdistributeparallelforsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective"
		end

	cxcursor_omptargetteamsdistributesimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPTargetTeamsDistributeSimdDirective"
		end

	cxcursor_builtinbitcastexpr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_BuiltinBitCastExpr"
		end

	cxcursor_ompmastertaskloopdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPMasterTaskLoopDirective"
		end

	cxcursor_ompparallelmastertaskloopdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPParallelMasterTaskLoopDirective"
		end

	cxcursor_ompmastertaskloopsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPMasterTaskLoopSimdDirective"
		end

	cxcursor_ompparallelmastertaskloopsimddirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPParallelMasterTaskLoopSimdDirective"
		end

	cxcursor_ompparallelmasterdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OMPParallelMasterDirective"
		end

	cxcursor_laststmt: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LastStmt"
		end

	cxcursor_translationunit: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_TranslationUnit"
		end

	cxcursor_firstattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FirstAttr"
		end

	cxcursor_unexposedattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_UnexposedAttr"
		end

	cxcursor_ibactionattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_IBActionAttr"
		end

	cxcursor_iboutletattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_IBOutletAttr"
		end

	cxcursor_iboutletcollectionattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_IBOutletCollectionAttr"
		end

	cxcursor_cxxfinalattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXFinalAttr"
		end

	cxcursor_cxxoverrideattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CXXOverrideAttr"
		end

	cxcursor_annotateattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_AnnotateAttr"
		end

	cxcursor_asmlabelattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_AsmLabelAttr"
		end

	cxcursor_packedattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_PackedAttr"
		end

	cxcursor_pureattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_PureAttr"
		end

	cxcursor_constattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ConstAttr"
		end

	cxcursor_noduplicateattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NoDuplicateAttr"
		end

	cxcursor_cudaconstantattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CUDAConstantAttr"
		end

	cxcursor_cudadeviceattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CUDADeviceAttr"
		end

	cxcursor_cudaglobalattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CUDAGlobalAttr"
		end

	cxcursor_cudahostattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CUDAHostAttr"
		end

	cxcursor_cudasharedattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_CUDASharedAttr"
		end

	cxcursor_visibilityattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_VisibilityAttr"
		end

	cxcursor_dllexport: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_DLLExport"
		end

	cxcursor_dllimport: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_DLLImport"
		end

	cxcursor_nsreturnsretained: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NSReturnsRetained"
		end

	cxcursor_nsreturnsnotretained: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NSReturnsNotRetained"
		end

	cxcursor_nsreturnsautoreleased: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NSReturnsAutoreleased"
		end

	cxcursor_nsconsumesself: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NSConsumesSelf"
		end

	cxcursor_nsconsumed: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_NSConsumed"
		end

	cxcursor_objcexception: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCException"
		end

	cxcursor_objcnsobject: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCNSObject"
		end

	cxcursor_objcindependentclass: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCIndependentClass"
		end

	cxcursor_objcpreciselifetime: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCPreciseLifetime"
		end

	cxcursor_objcreturnsinnerpointer: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCReturnsInnerPointer"
		end

	cxcursor_objcrequiressuper: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCRequiresSuper"
		end

	cxcursor_objcrootclass: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCRootClass"
		end

	cxcursor_objcsubclassingrestricted: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCSubclassingRestricted"
		end

	cxcursor_objcexplicitprotocolimpl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCExplicitProtocolImpl"
		end

	cxcursor_objcdesignatedinitializer: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCDesignatedInitializer"
		end

	cxcursor_objcruntimevisible: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCRuntimeVisible"
		end

	cxcursor_objcboxable: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ObjCBoxable"
		end

	cxcursor_flagenum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FlagEnum"
		end

	cxcursor_convergentattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ConvergentAttr"
		end

	cxcursor_warnunusedattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_WarnUnusedAttr"
		end

	cxcursor_warnunusedresultattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_WarnUnusedResultAttr"
		end

	cxcursor_alignedattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_AlignedAttr"
		end

	cxcursor_lastattr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LastAttr"
		end

	cxcursor_preprocessingdirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_PreprocessingDirective"
		end

	cxcursor_macrodefinition: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_MacroDefinition"
		end

	cxcursor_macroexpansion: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_MacroExpansion"
		end

	cxcursor_macroinstantiation: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_MacroInstantiation"
		end

	cxcursor_inclusiondirective: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_InclusionDirective"
		end

	cxcursor_firstpreprocessing: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FirstPreprocessing"
		end

	cxcursor_lastpreprocessing: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LastPreprocessing"
		end

	cxcursor_moduleimportdecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_ModuleImportDecl"
		end

	cxcursor_typealiastemplatedecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_TypeAliasTemplateDecl"
		end

	cxcursor_staticassert: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_StaticAssert"
		end

	cxcursor_frienddecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FriendDecl"
		end

	cxcursor_firstextradecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_FirstExtraDecl"
		end

	cxcursor_lastextradecl: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_LastExtraDecl"
		end

	cxcursor_overloadcandidate: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCursor_OverloadCandidate"
		end

end
