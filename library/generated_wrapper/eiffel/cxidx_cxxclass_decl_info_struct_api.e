note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CXIDX_CXXCLASS_DECL_INFO_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	declinfo: detachable CXIDX_DECL_INFO_STRUCT_API 
			-- Access member `declInfo`
		require
			exists: exists
		do
			if attached c_declinfo (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_declinfo (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_declinfo (item) 
		end

	set_declinfo (a_value: CXIDX_DECL_INFO_STRUCT_API) 
			-- Set member `declInfo`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_declinfo (item, a_value.item)
		ensure
			declinfo_set: attached declinfo as l_value implies l_value.item = a_value.item
		end

	bases: POINTER
			-- Access member `bases`
		require
			exists: exists
		do
			Result := c_bases (item) 
		ensure
		end

	set_bases (a_value: POINTER )
			-- Set member `bases`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_bases (item, a_value)
		ensure
			bases_set: bases = a_value 		end

	numbases: INTEGER
			-- Access member `numBases`
		require
			exists: exists
		do
			Result := c_numbases (item)
		ensure
			result_correct: Result = c_numbases (item)
		end

	set_numbases (a_value: INTEGER) 
			-- Change the value of member `numBases` to `a_value`.
		require
			exists: exists
		do
			set_c_numbases (item, a_value)
		ensure
			numbases_set: a_value = numbases
		end

feature {NONE} -- Implementation wrapper for struct CXIdxCXXClassDeclInfo

	sizeof_external: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"sizeof(CXIdxCXXClassDeclInfo)"
		end

	c_declinfo (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXIdxCXXClassDeclInfo*)$an_item)->declInfo
			]"
		end

	set_c_declinfo (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXIdxCXXClassDeclInfo*)$an_item)->declInfo =  (CXIdxDeclInfo const*)$a_value
			]"
		ensure
			declinfo_set: a_value = c_declinfo (an_item)
		end

	c_bases (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXIdxCXXClassDeclInfo*)$an_item)->bases
			]"
		end

	set_c_bases (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXIdxCXXClassDeclInfo*)$an_item)->bases =  (CXIdxBaseClassInfo const*const *)$a_value
			]"
		ensure
			bases_set: a_value = c_bases (an_item)
		end

	c_numbases (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXIdxCXXClassDeclInfo*)$an_item)->numBases
			]"
		end

	set_c_numbases (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXIdxCXXClassDeclInfo*)$an_item)->numBases =  (unsigned)$a_value
			]"
		ensure
			numbases_set: a_value = c_numbases (an_item)
		end

end
