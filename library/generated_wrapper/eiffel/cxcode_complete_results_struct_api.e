note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CXCODE_COMPLETE_RESULTS_STRUCT_API

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

	results: detachable CXCOMPLETION_RESULT_STRUCT_API 
			-- Access member `Results`
		require
			exists: exists
		do
			if attached c_results (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_results (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_results (item) 
		end

	set_results (a_value: CXCOMPLETION_RESULT_STRUCT_API) 
			-- Set member `Results`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_results (item, a_value.item)
		ensure
			results_set: attached results as l_value implies l_value.item = a_value.item
		end

	numresults: INTEGER
			-- Access member `NumResults`
		require
			exists: exists
		do
			Result := c_numresults (item)
		ensure
			result_correct: Result = c_numresults (item)
		end

	set_numresults (a_value: INTEGER) 
			-- Change the value of member `NumResults` to `a_value`.
		require
			exists: exists
		do
			set_c_numresults (item, a_value)
		ensure
			numresults_set: a_value = numresults
		end

feature {NONE} -- Implementation wrapper for struct CXCodeCompleteResults

	sizeof_external: INTEGER 
		external
			"C inline use <Index.h>"
		alias
			"sizeof(CXCodeCompleteResults)"
		end

	c_results (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXCodeCompleteResults*)$an_item)->Results
			]"
		end

	set_c_results (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXCodeCompleteResults*)$an_item)->Results =  (CXCompletionResult*)$a_value
			]"
		ensure
			results_set: a_value = c_results (an_item)
		end

	c_numresults (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXCodeCompleteResults*)$an_item)->NumResults
			]"
		end

	set_c_numresults (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <Index.h>"
		alias
			"[
				((CXCodeCompleteResults*)$an_item)->NumResults =  (unsigned)$a_value
			]"
		ensure
			numresults_set: a_value = c_numresults (an_item)
		end

end
