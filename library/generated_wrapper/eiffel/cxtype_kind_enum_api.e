-- enum wrapper
class CXTYPE_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxtype_invalid or a_value = cxtype_unexposed or a_value = cxtype_void or a_value = cxtype_bool or a_value = cxtype_char_u or a_value = cxtype_uchar or a_value = cxtype_char16 or a_value = cxtype_char32 or a_value = cxtype_ushort or a_value = cxtype_uint or a_value = cxtype_ulong or a_value = cxtype_ulonglong or a_value = cxtype_uint128 or a_value = cxtype_char_s or a_value = cxtype_schar or a_value = cxtype_wchar or a_value = cxtype_short or a_value = cxtype_int or a_value = cxtype_long or a_value = cxtype_longlong or a_value = cxtype_int128 or a_value = cxtype_float or a_value = cxtype_double or a_value = cxtype_longdouble or a_value = cxtype_nullptr or a_value = cxtype_overload or a_value = cxtype_dependent or a_value = cxtype_objcid or a_value = cxtype_objcclass or a_value = cxtype_objcsel or a_value = cxtype_float128 or a_value = cxtype_half or a_value = cxtype_float16 or a_value = cxtype_shortaccum or a_value = cxtype_accum or a_value = cxtype_longaccum or a_value = cxtype_ushortaccum or a_value = cxtype_uaccum or a_value = cxtype_ulongaccum or a_value = cxtype_firstbuiltin or a_value = cxtype_lastbuiltin or a_value = cxtype_complex or a_value = cxtype_pointer or a_value = cxtype_blockpointer or a_value = cxtype_lvaluereference or a_value = cxtype_rvaluereference or a_value = cxtype_record or a_value = cxtype_enum or a_value = cxtype_typedef or a_value = cxtype_objcinterface or a_value = cxtype_objcobjectpointer or a_value = cxtype_functionnoproto or a_value = cxtype_functionproto or a_value = cxtype_constantarray or a_value = cxtype_vector or a_value = cxtype_incompletearray or a_value = cxtype_variablearray or a_value = cxtype_dependentsizedarray or a_value = cxtype_memberpointer or a_value = cxtype_auto or a_value = cxtype_elaborated or a_value = cxtype_pipe or a_value = cxtype_oclimage1dro or a_value = cxtype_oclimage1darrayro or a_value = cxtype_oclimage1dbufferro or a_value = cxtype_oclimage2dro or a_value = cxtype_oclimage2darrayro or a_value = cxtype_oclimage2ddepthro or a_value = cxtype_oclimage2darraydepthro or a_value = cxtype_oclimage2dmsaaro or a_value = cxtype_oclimage2darraymsaaro or a_value = cxtype_oclimage2dmsaadepthro or a_value = cxtype_oclimage2darraymsaadepthro or a_value = cxtype_oclimage3dro or a_value = cxtype_oclimage1dwo or a_value = cxtype_oclimage1darraywo or a_value = cxtype_oclimage1dbufferwo or a_value = cxtype_oclimage2dwo or a_value = cxtype_oclimage2darraywo or a_value = cxtype_oclimage2ddepthwo or a_value = cxtype_oclimage2darraydepthwo or a_value = cxtype_oclimage2dmsaawo or a_value = cxtype_oclimage2darraymsaawo or a_value = cxtype_oclimage2dmsaadepthwo or a_value = cxtype_oclimage2darraymsaadepthwo or a_value = cxtype_oclimage3dwo or a_value = cxtype_oclimage1drw or a_value = cxtype_oclimage1darrayrw or a_value = cxtype_oclimage1dbufferrw or a_value = cxtype_oclimage2drw or a_value = cxtype_oclimage2darrayrw or a_value = cxtype_oclimage2ddepthrw or a_value = cxtype_oclimage2darraydepthrw or a_value = cxtype_oclimage2dmsaarw or a_value = cxtype_oclimage2darraymsaarw or a_value = cxtype_oclimage2dmsaadepthrw or a_value = cxtype_oclimage2darraymsaadepthrw or a_value = cxtype_oclimage3drw or a_value = cxtype_oclsampler or a_value = cxtype_oclevent or a_value = cxtype_oclqueue or a_value = cxtype_oclreserveid or a_value = cxtype_objcobject or a_value = cxtype_objctypeparam or a_value = cxtype_attributed or a_value = cxtype_oclintelsubgroupavcmcepayload or a_value = cxtype_oclintelsubgroupavcimepayload or a_value = cxtype_oclintelsubgroupavcrefpayload or a_value = cxtype_oclintelsubgroupavcsicpayload or a_value = cxtype_oclintelsubgroupavcmceresult or a_value = cxtype_oclintelsubgroupavcimeresult or a_value = cxtype_oclintelsubgroupavcrefresult or a_value = cxtype_oclintelsubgroupavcsicresult or a_value = cxtype_oclintelsubgroupavcimeresultsinglerefstreamout or a_value = cxtype_oclintelsubgroupavcimeresultdualrefstreamout or a_value = cxtype_oclintelsubgroupavcimesinglerefstreamin or a_value = cxtype_oclintelsubgroupavcimedualrefstreamin or a_value = cxtype_extvector
		end

	cxtype_invalid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Invalid"
		end

	cxtype_unexposed: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Unexposed"
		end

	cxtype_void: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Void"
		end

	cxtype_bool: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Bool"
		end

	cxtype_char_u: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Char_U"
		end

	cxtype_uchar: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_UChar"
		end

	cxtype_char16: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Char16"
		end

	cxtype_char32: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Char32"
		end

	cxtype_ushort: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_UShort"
		end

	cxtype_uint: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_UInt"
		end

	cxtype_ulong: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ULong"
		end

	cxtype_ulonglong: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ULongLong"
		end

	cxtype_uint128: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_UInt128"
		end

	cxtype_char_s: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Char_S"
		end

	cxtype_schar: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_SChar"
		end

	cxtype_wchar: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_WChar"
		end

	cxtype_short: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Short"
		end

	cxtype_int: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Int"
		end

	cxtype_long: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Long"
		end

	cxtype_longlong: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_LongLong"
		end

	cxtype_int128: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Int128"
		end

	cxtype_float: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Float"
		end

	cxtype_double: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Double"
		end

	cxtype_longdouble: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_LongDouble"
		end

	cxtype_nullptr: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_NullPtr"
		end

	cxtype_overload: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Overload"
		end

	cxtype_dependent: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Dependent"
		end

	cxtype_objcid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ObjCId"
		end

	cxtype_objcclass: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ObjCClass"
		end

	cxtype_objcsel: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ObjCSel"
		end

	cxtype_float128: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Float128"
		end

	cxtype_half: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Half"
		end

	cxtype_float16: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Float16"
		end

	cxtype_shortaccum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ShortAccum"
		end

	cxtype_accum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Accum"
		end

	cxtype_longaccum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_LongAccum"
		end

	cxtype_ushortaccum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_UShortAccum"
		end

	cxtype_uaccum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_UAccum"
		end

	cxtype_ulongaccum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ULongAccum"
		end

	cxtype_firstbuiltin: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_FirstBuiltin"
		end

	cxtype_lastbuiltin: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_LastBuiltin"
		end

	cxtype_complex: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Complex"
		end

	cxtype_pointer: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Pointer"
		end

	cxtype_blockpointer: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_BlockPointer"
		end

	cxtype_lvaluereference: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_LValueReference"
		end

	cxtype_rvaluereference: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_RValueReference"
		end

	cxtype_record: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Record"
		end

	cxtype_enum: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Enum"
		end

	cxtype_typedef: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Typedef"
		end

	cxtype_objcinterface: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ObjCInterface"
		end

	cxtype_objcobjectpointer: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ObjCObjectPointer"
		end

	cxtype_functionnoproto: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_FunctionNoProto"
		end

	cxtype_functionproto: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_FunctionProto"
		end

	cxtype_constantarray: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ConstantArray"
		end

	cxtype_vector: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Vector"
		end

	cxtype_incompletearray: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_IncompleteArray"
		end

	cxtype_variablearray: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_VariableArray"
		end

	cxtype_dependentsizedarray: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_DependentSizedArray"
		end

	cxtype_memberpointer: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_MemberPointer"
		end

	cxtype_auto: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Auto"
		end

	cxtype_elaborated: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Elaborated"
		end

	cxtype_pipe: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Pipe"
		end

	cxtype_oclimage1dro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dRO"
		end

	cxtype_oclimage1darrayro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dArrayRO"
		end

	cxtype_oclimage1dbufferro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dBufferRO"
		end

	cxtype_oclimage2dro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dRO"
		end

	cxtype_oclimage2darrayro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayRO"
		end

	cxtype_oclimage2ddepthro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dDepthRO"
		end

	cxtype_oclimage2darraydepthro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayDepthRO"
		end

	cxtype_oclimage2dmsaaro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dMSAARO"
		end

	cxtype_oclimage2darraymsaaro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayMSAARO"
		end

	cxtype_oclimage2dmsaadepthro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dMSAADepthRO"
		end

	cxtype_oclimage2darraymsaadepthro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayMSAADepthRO"
		end

	cxtype_oclimage3dro: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage3dRO"
		end

	cxtype_oclimage1dwo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dWO"
		end

	cxtype_oclimage1darraywo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dArrayWO"
		end

	cxtype_oclimage1dbufferwo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dBufferWO"
		end

	cxtype_oclimage2dwo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dWO"
		end

	cxtype_oclimage2darraywo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayWO"
		end

	cxtype_oclimage2ddepthwo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dDepthWO"
		end

	cxtype_oclimage2darraydepthwo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayDepthWO"
		end

	cxtype_oclimage2dmsaawo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dMSAAWO"
		end

	cxtype_oclimage2darraymsaawo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayMSAAWO"
		end

	cxtype_oclimage2dmsaadepthwo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dMSAADepthWO"
		end

	cxtype_oclimage2darraymsaadepthwo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayMSAADepthWO"
		end

	cxtype_oclimage3dwo: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage3dWO"
		end

	cxtype_oclimage1drw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dRW"
		end

	cxtype_oclimage1darrayrw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dArrayRW"
		end

	cxtype_oclimage1dbufferrw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage1dBufferRW"
		end

	cxtype_oclimage2drw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dRW"
		end

	cxtype_oclimage2darrayrw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayRW"
		end

	cxtype_oclimage2ddepthrw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dDepthRW"
		end

	cxtype_oclimage2darraydepthrw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayDepthRW"
		end

	cxtype_oclimage2dmsaarw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dMSAARW"
		end

	cxtype_oclimage2darraymsaarw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayMSAARW"
		end

	cxtype_oclimage2dmsaadepthrw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dMSAADepthRW"
		end

	cxtype_oclimage2darraymsaadepthrw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage2dArrayMSAADepthRW"
		end

	cxtype_oclimage3drw: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLImage3dRW"
		end

	cxtype_oclsampler: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLSampler"
		end

	cxtype_oclevent: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLEvent"
		end

	cxtype_oclqueue: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLQueue"
		end

	cxtype_oclreserveid: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLReserveID"
		end

	cxtype_objcobject: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ObjCObject"
		end

	cxtype_objctypeparam: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ObjCTypeParam"
		end

	cxtype_attributed: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_Attributed"
		end

	cxtype_oclintelsubgroupavcmcepayload: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCMcePayload"
		end

	cxtype_oclintelsubgroupavcimepayload: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCImePayload"
		end

	cxtype_oclintelsubgroupavcrefpayload: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCRefPayload"
		end

	cxtype_oclintelsubgroupavcsicpayload: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCSicPayload"
		end

	cxtype_oclintelsubgroupavcmceresult: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCMceResult"
		end

	cxtype_oclintelsubgroupavcimeresult: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCImeResult"
		end

	cxtype_oclintelsubgroupavcrefresult: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCRefResult"
		end

	cxtype_oclintelsubgroupavcsicresult: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCSicResult"
		end

	cxtype_oclintelsubgroupavcimeresultsinglerefstreamout: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout"
		end

	cxtype_oclintelsubgroupavcimeresultdualrefstreamout: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout"
		end

	cxtype_oclintelsubgroupavcimesinglerefstreamin: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCImeSingleRefStreamin"
		end

	cxtype_oclintelsubgroupavcimedualrefstreamin: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_OCLIntelSubgroupAVCImeDualRefStreamin"
		end

	cxtype_extvector: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXType_ExtVector"
		end

end
