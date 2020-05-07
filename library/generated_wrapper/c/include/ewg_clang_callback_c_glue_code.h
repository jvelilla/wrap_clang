#ifndef EWG_CALLBACK_CLANG___
#define EWG_CALLBACK_CLANG___

#include <Index.h>

typedef enum CXChildVisitResult (*cxcursor_visitor_eiffel_feature) (void *a_class, CXCursor cursor, CXCursor parent, CXClientData client_data);

void* cxcursor_visitor_object;
cxcursor_visitor_eiffel_feature cxcursor_visitor_address_1;
cxcursor_visitor_eiffel_feature cxcursor_visitor_address_2;
cxcursor_visitor_eiffel_feature cxcursor_visitor_address_3;

void set_cxcursor_visitor_object (void* a_class);

void release_cxcursor_visitor_object (void);

void* get_cxcursor_visitor_stub_1 ();
void* get_cxcursor_visitor_stub_2 ();
void* get_cxcursor_visitor_stub_3 ();

void set_cxcursor_visitor_entry_1 (void* a_feature);
void set_cxcursor_visitor_entry_2 (void* a_feature);
void set_cxcursor_visitor_entry_3 (void* a_feature);

enum CXChildVisitResult call_cxcursor_visitor (void *a_function, CXCursor cursor, CXCursor parent, CXClientData client_data);


#endif
