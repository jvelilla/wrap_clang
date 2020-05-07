note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CXSTRING_SET_STRUCT_API

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

	strings: detachable CXSTRING_STRUCT_API 
			-- Access member `Strings`
		require
			exists: exists
		do
			if attached c_strings (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_strings (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_strings (item) 
		end

	set_strings (a_value: CXSTRING_STRUCT_API) 
			-- Set member `Strings`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_strings (item, a_value.item)
		ensure
			strings_set: attached strings as l_value implies l_value.item = a_value.item
		end

	count: INTEGER
			-- Access member `Count`
		require
			exists: exists
		do
			Result := c_count (item)
		ensure
			result_correct: Result = c_count (item)
		end

	set_count (a_value: INTEGER) 
			-- Change the value of member `Count` to `a_value`.
		require
			exists: exists
		do
			set_c_count (item, a_value)
		ensure
			count_set: a_value = count
		end

feature {NONE} -- Implementation wrapper for struct CXStringSet

	sizeof_external: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"sizeof(CXStringSet)"
		end

	c_strings (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXStringSet*)$an_item)->Strings
			]"
		end

	set_c_strings (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXStringSet*)$an_item)->Strings =  (CXString*)$a_value
			]"
		ensure
			strings_set: a_value = c_strings (an_item)
		end

	c_count (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXStringSet*)$an_item)->Count
			]"
		end

	set_c_count (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXStringSet*)$an_item)->Count =  (unsigned)$a_value
			]"
		ensure
			count_set: a_value = c_count (an_item)
		end

end
