note
	description: "Summary description for {CXINDEX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CXINDEX

inherit

	DISPOSABLE

	MEMORY_STRUCTURE


create

	make,
	make_by_pointer

feature -- Removal

	dispose
			-- <Precursor>
		do
			if shared then
				clang_disposeindex (item)
			end
		end

feature -- Measurement

	structure_size: INTEGER
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	sizeof_external: INTEGER
		external
			"C inline use <Index.h>"
		alias
			"return sizeof(CXIndex);"
		end

	clang_disposeindex (a_unit: POINTER)
			--  Destroy the given index.
		external
			"C inline use <Index.h>"
		alias
			"clang_disposeIndex($a_unit);"
		end

end
