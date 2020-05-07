-- enum wrapper
class CXTOKEN_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxtoken_punctuation or a_value = cxtoken_keyword or a_value = cxtoken_identifier or a_value = cxtoken_literal or a_value = cxtoken_comment
		end

	cxtoken_punctuation: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXToken_Punctuation"
		end

	cxtoken_keyword: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXToken_Keyword"
		end

	cxtoken_identifier: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXToken_Identifier"
		end

	cxtoken_literal: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXToken_Literal"
		end

	cxtoken_comment: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXToken_Comment"
		end

end
