note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class EWG_CLANG_CALLBACK_C_GLUE_CODE_FUNCTIONS_API


feature -- Access

	set_cxcursor_visitor_object (a_class: POINTER) 
		do
			c_set_cxcursor_visitor_object (a_class)
		end

	release_cxcursor_visitor_object
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				release_cxcursor_visitor_object ();
			]"
		end

	get_cxcursor_visitor_stub_1: POINTER
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				return get_cxcursor_visitor_stub_1 ();
			]"
		end

	get_cxcursor_visitor_stub_2: POINTER
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				return get_cxcursor_visitor_stub_2 ();
			]"
		end

	get_cxcursor_visitor_stub_3: POINTER
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				return get_cxcursor_visitor_stub_3 ();
			]"
		end

	set_cxcursor_visitor_entry_1 (a_feature: POINTER) 
		do
			c_set_cxcursor_visitor_entry_1 (a_feature)
		end

	set_cxcursor_visitor_entry_2 (a_feature: POINTER) 
		do
			c_set_cxcursor_visitor_entry_2 (a_feature)
		end

	set_cxcursor_visitor_entry_3 (a_feature: POINTER) 
		do
			c_set_cxcursor_visitor_entry_3 (a_feature)
		end

	call_cxcursor_visitor (a_function: POINTER; cursor: CXCURSOR_STRUCT_API; parent: CXCURSOR_STRUCT_API; client_data: POINTER): INTEGER 
		do
			Result := c_call_cxcursor_visitor (a_function, cursor.item, parent.item, client_data)
		end

feature -- Externals

	c_set_cxcursor_visitor_object (a_class: POINTER)
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				set_cxcursor_visitor_object ((void*)$a_class);
			]"
		end

	c_set_cxcursor_visitor_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				set_cxcursor_visitor_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_cxcursor_visitor_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				set_cxcursor_visitor_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_cxcursor_visitor_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				set_cxcursor_visitor_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_cxcursor_visitor (a_function: POINTER; cursor: POINTER; parent: POINTER; client_data: POINTER): INTEGER
		external
			"C inline use <ewg_clang_callback_c_glue_code.h>"
		alias
			"[
				return call_cxcursor_visitor ((void*)$a_function, *(CXCursor*)$cursor, *(CXCursor*)$parent, (CXClientData)$client_data);
			]"
		end

feature -- Externals Address

end
