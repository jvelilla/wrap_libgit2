note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GIT_DIFF_DELTA_STRUCT_API

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

	status: INTEGER
			-- Access member `status`
		require
			exists: exists
		do
			Result := c_status (item)
		ensure
			result_correct: Result = c_status (item)
		end

	set_status (a_value: INTEGER) 
			-- Change the value of member `status` to `a_value`.
		require
			exists: exists
		do
			set_c_status (item, a_value)
		ensure
			status_set: a_value = status
		end

	flags: INTEGER
			-- Access member `flags`
		require
			exists: exists
		do
			Result := c_flags (item)
		ensure
			result_correct: Result = c_flags (item)
		end

	set_flags (a_value: INTEGER) 
			-- Change the value of member `flags` to `a_value`.
		require
			exists: exists
		do
			set_c_flags (item, a_value)
		ensure
			flags_set: a_value = flags
		end

	similarity: INTEGER
			-- Access member `similarity`
		require
			exists: exists
		do
			Result := c_similarity (item)
		ensure
			result_correct: Result = c_similarity (item)
		end

	set_similarity (a_value: INTEGER) 
			-- Change the value of member `similarity` to `a_value`.
		require
			exists: exists
		do
			set_c_similarity (item, a_value)
		ensure
			similarity_set: a_value = similarity
		end

	nfiles: INTEGER
			-- Access member `nfiles`
		require
			exists: exists
		do
			Result := c_nfiles (item)
		ensure
			result_correct: Result = c_nfiles (item)
		end

	set_nfiles (a_value: INTEGER) 
			-- Change the value of member `nfiles` to `a_value`.
		require
			exists: exists
		do
			set_c_nfiles (item, a_value)
		ensure
			nfiles_set: a_value = nfiles
		end

	old_file: detachable GIT_DIFF_FILE_STRUCT_API
			-- Access member `old_file`
		require
			exists: exists
		do
			if attached c_old_file (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_old_file (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_old_file (item) 
		end

	set_old_file (a_value: GIT_DIFF_FILE_STRUCT_API) 
			-- Set member `old_file`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_old_file (item, a_value.item)
		ensure
			old_file_set: attached old_file as l_value implies l_value.item = a_value.item
		end

	new_file: detachable GIT_DIFF_FILE_STRUCT_API
			-- Access member `new_file`
		require
			exists: exists
		do
			if attached c_new_file (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_new_file (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_new_file (item) 
		end

	set_new_file (a_value: GIT_DIFF_FILE_STRUCT_API) 
			-- Set member `new_file`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_new_file (item, a_value.item)
		ensure
			new_file_set: attached new_file as l_value implies l_value.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct git_diff_delta

	sizeof_external: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"sizeof(git_diff_delta)"
		end

	c_status (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->status
			]"
		end

	set_c_status (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->status =  (git_delta_t)$a_value
			]"
		ensure
			status_set: a_value = c_status (an_item)
		end

	c_flags (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->flags
			]"
		end

	set_c_flags (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->flags =  (uint32_t)$a_value
			]"
		ensure
			flags_set: a_value = c_flags (an_item)
		end

	c_similarity (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->similarity
			]"
		end

	set_c_similarity (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->similarity =  (uint16_t)$a_value
			]"
		ensure
			similarity_set: a_value = c_similarity (an_item)
		end

	c_nfiles (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->nfiles
			]"
		end

	set_c_nfiles (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->nfiles =  (uint16_t)$a_value
			]"
		ensure
			nfiles_set: a_value = c_nfiles (an_item)
		end

	c_old_file (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((git_diff_delta*)$an_item)->old_file
			]"
		end

	set_c_old_file (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->old_file =  *(git_diff_file*)$a_value
			]"
		end

	c_new_file (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((git_diff_delta*)$an_item)->new_file
			]"
		end

	set_c_new_file (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_diff_delta*)$an_item)->new_file =  *(git_diff_file*)$a_value
			]"
		end

end
