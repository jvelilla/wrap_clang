note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CXSOURCE_LOCATION_STRUCT_API

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

	ptr_data: POINTER
			-- Access member `ptr_data`
		require
			exists: exists
		do
			Result := c_ptr_data (item)
		ensure
			result_correct: Result = c_ptr_data (item)
		end

	int_data: INTEGER
			-- Access member `int_data`
		require
			exists: exists
		do
			Result := c_int_data (item)
		ensure
			result_correct: Result = c_int_data (item)
		end

	set_int_data (a_value: INTEGER) 
			-- Change the value of member `int_data` to `a_value`.
		require
			exists: exists
		do
			set_c_int_data (item, a_value)
		ensure
			int_data_set: a_value = int_data
		end

feature {NONE} -- Implementation wrapper for struct CXSourceLocation

	sizeof_external: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"sizeof(CXSourceLocation)"
		end

	c_ptr_data (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXSourceLocation*)$an_item)->ptr_data
			]"
		end

	c_int_data (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXSourceLocation*)$an_item)->int_data
			]"
		end

	set_c_int_data (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXSourceLocation*)$an_item)->int_data =  (unsigned)$a_value
			]"
		ensure
			int_data_set: a_value = c_int_data (an_item)
		end

end
