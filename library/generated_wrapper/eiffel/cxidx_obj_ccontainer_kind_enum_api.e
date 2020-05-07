-- enum wrapper
class CXIDX_OBJ_CCONTAINER_KIND_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cxidxobjccontainer_forwardref or a_value = cxidxobjccontainer_interface or a_value = cxidxobjccontainer_implementation
		end

	cxidxobjccontainer_forwardref: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxObjCContainer_ForwardRef"
		end

	cxidxobjccontainer_interface: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxObjCContainer_Interface"
		end

	cxidxobjccontainer_implementation: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"CXIdxObjCContainer_Implementation"
		end

end
