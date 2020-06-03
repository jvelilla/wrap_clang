-- enum wrapper
class CXTRANSLATION_UNIT_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxtranslationunit_none or a_value = cxtranslationunit_detailedpreprocessingrecord or a_value = cxtranslationunit_incomplete or a_value = cxtranslationunit_precompiledpreamble or a_value = cxtranslationunit_cachecompletionresults or a_value = cxtranslationunit_forserialization or a_value = cxtranslationunit_cxxchainedpch or a_value = cxtranslationunit_skipfunctionbodies or a_value = cxtranslationunit_includebriefcommentsincodecompletion or a_value = cxtranslationunit_createpreambleonfirstparse or a_value = cxtranslationunit_keepgoing or a_value = cxtranslationunit_singlefileparse or a_value = cxtranslationunit_limitskipfunctionbodiestopreamble or a_value = cxtranslationunit_includeattributedtypes or a_value = cxtranslationunit_visitimplicitattributes or a_value = cxtranslationunit_ignorenonerrorsfromincludedfiles or a_value = cxtranslationunit_retainexcludedconditionalblocks
		end

	cxtranslationunit_none: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_None"
		end

	cxtranslationunit_detailedpreprocessingrecord: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_DetailedPreprocessingRecord"
		end

	cxtranslationunit_incomplete: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_Incomplete"
		end

	cxtranslationunit_precompiledpreamble: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_PrecompiledPreamble"
		end

	cxtranslationunit_cachecompletionresults: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_CacheCompletionResults"
		end

	cxtranslationunit_forserialization: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_ForSerialization"
		end

	cxtranslationunit_cxxchainedpch: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_CXXChainedPCH"
		end

	cxtranslationunit_skipfunctionbodies: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_SkipFunctionBodies"
		end

	cxtranslationunit_includebriefcommentsincodecompletion: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_IncludeBriefCommentsInCodeCompletion"
		end

	cxtranslationunit_createpreambleonfirstparse: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_CreatePreambleOnFirstParse"
		end

	cxtranslationunit_keepgoing: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_KeepGoing"
		end

	cxtranslationunit_singlefileparse: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_SingleFileParse"
		end

	cxtranslationunit_limitskipfunctionbodiestopreamble: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_LimitSkipFunctionBodiesToPreamble"
		end

	cxtranslationunit_includeattributedtypes: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_IncludeAttributedTypes"
		end

	cxtranslationunit_visitimplicitattributes: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_VisitImplicitAttributes"
		end

	cxtranslationunit_ignorenonerrorsfromincludedfiles: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles"
		end

	cxtranslationunit_retainexcludedconditionalblocks: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTranslationUnit_RetainExcludedConditionalBlocks"
		end

end
