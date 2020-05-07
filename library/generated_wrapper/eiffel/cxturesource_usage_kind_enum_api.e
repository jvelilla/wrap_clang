-- enum wrapper
class CXTURESOURCE_USAGE_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxturesourceusage_ast or a_value = cxturesourceusage_identifiers or a_value = cxturesourceusage_selectors or a_value = cxturesourceusage_globalcompletionresults or a_value = cxturesourceusage_sourcemanagercontentcache or a_value = cxturesourceusage_ast_sidetables or a_value = cxturesourceusage_sourcemanager_membuffer_malloc or a_value = cxturesourceusage_sourcemanager_membuffer_mmap or a_value = cxturesourceusage_externalastsource_membuffer_malloc or a_value = cxturesourceusage_externalastsource_membuffer_mmap or a_value = cxturesourceusage_preprocessor or a_value = cxturesourceusage_preprocessingrecord or a_value = cxturesourceusage_sourcemanager_datastructures or a_value = cxturesourceusage_preprocessor_headersearch or a_value = cxturesourceusage_memory_in_bytes_begin or a_value = cxturesourceusage_memory_in_bytes_end or a_value = cxturesourceusage_first or a_value = cxturesourceusage_last
		end

	cxturesourceusage_ast: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_AST"
		end

	cxturesourceusage_identifiers: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_Identifiers"
		end

	cxturesourceusage_selectors: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_Selectors"
		end

	cxturesourceusage_globalcompletionresults: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_GlobalCompletionResults"
		end

	cxturesourceusage_sourcemanagercontentcache: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_SourceManagerContentCache"
		end

	cxturesourceusage_ast_sidetables: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_AST_SideTables"
		end

	cxturesourceusage_sourcemanager_membuffer_malloc: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_SourceManager_Membuffer_Malloc"
		end

	cxturesourceusage_sourcemanager_membuffer_mmap: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_SourceManager_Membuffer_MMap"
		end

	cxturesourceusage_externalastsource_membuffer_malloc: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc"
		end

	cxturesourceusage_externalastsource_membuffer_mmap: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_ExternalASTSource_Membuffer_MMap"
		end

	cxturesourceusage_preprocessor: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_Preprocessor"
		end

	cxturesourceusage_preprocessingrecord: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_PreprocessingRecord"
		end

	cxturesourceusage_sourcemanager_datastructures: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_SourceManager_DataStructures"
		end

	cxturesourceusage_preprocessor_headersearch: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_Preprocessor_HeaderSearch"
		end

	cxturesourceusage_memory_in_bytes_begin: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN"
		end

	cxturesourceusage_memory_in_bytes_end: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_MEMORY_IN_BYTES_END"
		end

	cxturesourceusage_first: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_First"
		end

	cxturesourceusage_last: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXTUResourceUsage_Last"
		end

end
