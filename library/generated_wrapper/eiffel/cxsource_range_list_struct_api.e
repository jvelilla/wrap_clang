note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CXSOURCE_RANGE_LIST_STRUCT_API

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

	count: INTEGER
			-- Access member `count`
		require
			exists: exists
		do
			Result := c_count (item)
		ensure
			result_correct: Result = c_count (item)
		end

	set_count (a_value: INTEGER) 
			-- Change the value of member `count` to `a_value`.
		require
			exists: exists
		do
			set_c_count (item, a_value)
		ensure
			count_set: a_value = count
		end

	ranges: detachable CXSOURCE_RANGE_STRUCT_API 
			-- Access member `ranges`
		require
			exists: exists
		do
			if attached c_ranges (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_ranges (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_ranges (item) 
		end

	set_ranges (a_value: CXSOURCE_RANGE_STRUCT_API) 
			-- Set member `ranges`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_ranges (item, a_value.item)
		ensure
			ranges_set: attached ranges as l_value implies l_value.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct CXSourceRangeList

	sizeof_external: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"sizeof(CXSourceRangeList)"
		end

	c_count (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXSourceRangeList*)$an_item)->count
			]"
		end

	set_c_count (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXSourceRangeList*)$an_item)->count =  (unsigned)$a_value
			]"
		ensure
			count_set: a_value = c_count (an_item)
		end

	c_ranges (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXSourceRangeList*)$an_item)->ranges
			]"
		end

	set_c_ranges (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXSourceRangeList*)$an_item)->ranges =  (CXSourceRange*)$a_value
			]"
		ensure
			ranges_set: a_value = c_ranges (an_item)
		end

end
