-- enum wrapper
class CXCOMPLETION_CHUNK_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxcompletionchunk_optional or a_value = cxcompletionchunk_typedtext or a_value = cxcompletionchunk_text or a_value = cxcompletionchunk_placeholder or a_value = cxcompletionchunk_informative or a_value = cxcompletionchunk_currentparameter or a_value = cxcompletionchunk_leftparen or a_value = cxcompletionchunk_rightparen or a_value = cxcompletionchunk_leftbracket or a_value = cxcompletionchunk_rightbracket or a_value = cxcompletionchunk_leftbrace or a_value = cxcompletionchunk_rightbrace or a_value = cxcompletionchunk_leftangle or a_value = cxcompletionchunk_rightangle or a_value = cxcompletionchunk_comma or a_value = cxcompletionchunk_resulttype or a_value = cxcompletionchunk_colon or a_value = cxcompletionchunk_semicolon or a_value = cxcompletionchunk_equal or a_value = cxcompletionchunk_horizontalspace or a_value = cxcompletionchunk_verticalspace
		end

	cxcompletionchunk_optional: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_Optional"
		end

	cxcompletionchunk_typedtext: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_TypedText"
		end

	cxcompletionchunk_text: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_Text"
		end

	cxcompletionchunk_placeholder: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_Placeholder"
		end

	cxcompletionchunk_informative: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_Informative"
		end

	cxcompletionchunk_currentparameter: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_CurrentParameter"
		end

	cxcompletionchunk_leftparen: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_LeftParen"
		end

	cxcompletionchunk_rightparen: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_RightParen"
		end

	cxcompletionchunk_leftbracket: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_LeftBracket"
		end

	cxcompletionchunk_rightbracket: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_RightBracket"
		end

	cxcompletionchunk_leftbrace: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_LeftBrace"
		end

	cxcompletionchunk_rightbrace: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_RightBrace"
		end

	cxcompletionchunk_leftangle: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_LeftAngle"
		end

	cxcompletionchunk_rightangle: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_RightAngle"
		end

	cxcompletionchunk_comma: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_Comma"
		end

	cxcompletionchunk_resulttype: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_ResultType"
		end

	cxcompletionchunk_colon: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_Colon"
		end

	cxcompletionchunk_semicolon: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_SemiColon"
		end

	cxcompletionchunk_equal: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_Equal"
		end

	cxcompletionchunk_horizontalspace: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_HorizontalSpace"
		end

	cxcompletionchunk_verticalspace: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXCompletionChunk_VerticalSpace"
		end

end
