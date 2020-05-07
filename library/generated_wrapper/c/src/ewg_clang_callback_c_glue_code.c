#include <ewg_eiffel.h>
#include <ewg_clang_callback_c_glue_code.h>

#ifdef _MSC_VER
#pragma warning (disable:4715) // Not all control paths return a value
#endif
void* cxcursor_visitor_object =  NULL;
cxcursor_visitor_eiffel_feature cxcursor_visitor_address_1 = NULL;
cxcursor_visitor_eiffel_feature cxcursor_visitor_address_2 = NULL;
cxcursor_visitor_eiffel_feature cxcursor_visitor_address_3 = NULL;

void set_cxcursor_visitor_object (void* a_object)
{
	if (a_object) {
		cxcursor_visitor_object = eif_protect(a_object);
	} else { 
		cxcursor_visitor_object = NULL;
	}
}

void release_cxcursor_visitor_object ()
{
	eif_wean (cxcursor_visitor_object);
}

enum CXChildVisitResult cxcursor_visitor_stub_1 (CXCursor cursor, CXCursor parent, CXClientData client_data)
{
	if (cxcursor_visitor_object != NULL && cxcursor_visitor_address_1 != NULL)
	{
		return cxcursor_visitor_address_1 (eif_access(cxcursor_visitor_object), cursor, parent, client_data);
	}
}

enum CXChildVisitResult cxcursor_visitor_stub_2 (CXCursor cursor, CXCursor parent, CXClientData client_data)
{
	if (cxcursor_visitor_object != NULL && cxcursor_visitor_address_2 != NULL)
	{
		return cxcursor_visitor_address_2 (eif_access(cxcursor_visitor_object), cursor, parent, client_data);
	}
}

enum CXChildVisitResult cxcursor_visitor_stub_3 (CXCursor cursor, CXCursor parent, CXClientData client_data)
{
	if (cxcursor_visitor_object != NULL && cxcursor_visitor_address_3 != NULL)
	{
		return cxcursor_visitor_address_3 (eif_access(cxcursor_visitor_object), cursor, parent, client_data);
	}
}

void set_cxcursor_visitor_entry_1 (void* a_feature){
	cxcursor_visitor_address_1 = (cxcursor_visitor_eiffel_feature) a_feature;
}

void set_cxcursor_visitor_entry_2 (void* a_feature){
	cxcursor_visitor_address_2 = (cxcursor_visitor_eiffel_feature) a_feature;
}

void set_cxcursor_visitor_entry_3 (void* a_feature){
	cxcursor_visitor_address_3 = (cxcursor_visitor_eiffel_feature) a_feature;
}

void* get_cxcursor_visitor_stub_1 (){
	return (void*) cxcursor_visitor_stub_1;
}

void* get_cxcursor_visitor_stub_2 (){
	return (void*) cxcursor_visitor_stub_2;
}

void* get_cxcursor_visitor_stub_3 (){
	return (void*) cxcursor_visitor_stub_3;
}

enum CXChildVisitResult call_cxcursor_visitor (void *a_function, CXCursor cursor, CXCursor parent, CXClientData client_data)
{
	return ((enum CXChildVisitResult (*) (CXCursor cursor, CXCursor parent, CXClientData client_data))a_function) (cursor, parent, client_data);
}

