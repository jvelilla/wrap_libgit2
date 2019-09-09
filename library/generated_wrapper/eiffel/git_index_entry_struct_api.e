note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GIT_INDEX_ENTRY_STRUCT_API

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

	ctime: detachable GIT_INDEX_TIME_STRUCT_API
			-- Access member `ctime`
		require
			exists: exists
		do
			if attached c_ctime (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_ctime (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_ctime (item) 
		end

	set_ctime (a_value: GIT_INDEX_TIME_STRUCT_API) 
			-- Set member `ctime`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_ctime (item, a_value.item)
		ensure
			ctime_set: attached ctime as l_value implies l_value.item = a_value.item
		end

	mtime: detachable GIT_INDEX_TIME_STRUCT_API
			-- Access member `mtime`
		require
			exists: exists
		do
			if attached c_mtime (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_mtime (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_mtime (item) 
		end

	set_mtime (a_value: GIT_INDEX_TIME_STRUCT_API) 
			-- Set member `mtime`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_mtime (item, a_value.item)
		ensure
			mtime_set: attached mtime as l_value implies l_value.item = a_value.item
		end

	dev: INTEGER
			-- Access member `dev`
		require
			exists: exists
		do
			Result := c_dev (item)
		ensure
			result_correct: Result = c_dev (item)
		end

	set_dev (a_value: INTEGER) 
			-- Change the value of member `dev` to `a_value`.
		require
			exists: exists
		do
			set_c_dev (item, a_value)
		ensure
			dev_set: a_value = dev
		end

	ino: INTEGER
			-- Access member `ino`
		require
			exists: exists
		do
			Result := c_ino (item)
		ensure
			result_correct: Result = c_ino (item)
		end

	set_ino (a_value: INTEGER) 
			-- Change the value of member `ino` to `a_value`.
		require
			exists: exists
		do
			set_c_ino (item, a_value)
		ensure
			ino_set: a_value = ino
		end

	mode: INTEGER
			-- Access member `mode`
		require
			exists: exists
		do
			Result := c_mode (item)
		ensure
			result_correct: Result = c_mode (item)
		end

	set_mode (a_value: INTEGER) 
			-- Change the value of member `mode` to `a_value`.
		require
			exists: exists
		do
			set_c_mode (item, a_value)
		ensure
			mode_set: a_value = mode
		end

	uid: INTEGER
			-- Access member `uid`
		require
			exists: exists
		do
			Result := c_uid (item)
		ensure
			result_correct: Result = c_uid (item)
		end

	set_uid (a_value: INTEGER) 
			-- Change the value of member `uid` to `a_value`.
		require
			exists: exists
		do
			set_c_uid (item, a_value)
		ensure
			uid_set: a_value = uid
		end

	gid: INTEGER
			-- Access member `gid`
		require
			exists: exists
		do
			Result := c_gid (item)
		ensure
			result_correct: Result = c_gid (item)
		end

	set_gid (a_value: INTEGER) 
			-- Change the value of member `gid` to `a_value`.
		require
			exists: exists
		do
			set_c_gid (item, a_value)
		ensure
			gid_set: a_value = gid
		end

	file_size: INTEGER
			-- Access member `file_size`
		require
			exists: exists
		do
			Result := c_file_size (item)
		ensure
			result_correct: Result = c_file_size (item)
		end

	set_file_size (a_value: INTEGER) 
			-- Change the value of member `file_size` to `a_value`.
		require
			exists: exists
		do
			set_c_file_size (item, a_value)
		ensure
			file_size_set: a_value = file_size
		end

	id: detachable GIT_OID_STRUCT_API
			-- Access member `id`
		require
			exists: exists
		do
			if attached c_id (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_id (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_id (item) 
		end

	set_id (a_value: GIT_OID_STRUCT_API) 
			-- Set member `id`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_id (item, a_value.item)
		ensure
			id_set: attached id as l_value implies l_value.item = a_value.item
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

	flags_extended: INTEGER
			-- Access member `flags_extended`
		require
			exists: exists
		do
			Result := c_flags_extended (item)
		ensure
			result_correct: Result = c_flags_extended (item)
		end

	set_flags_extended (a_value: INTEGER) 
			-- Change the value of member `flags_extended` to `a_value`.
		require
			exists: exists
		do
			set_c_flags_extended (item, a_value)
		ensure
			flags_extended_set: a_value = flags_extended
		end

	path:  detachable STRING
			-- Access member `path`
		require
			exists: exists
		do
			if attached c_path (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_path (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_path (a_value: STRING) 
			-- Change the value of member `path` to `a_value`.
		require
			exists: exists
		do
			set_c_path (item, (create {C_STRING}.make (a_value)).item )
		end

feature {NONE} -- Implementation wrapper for struct struct git_index_entry

	sizeof_external: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"sizeof(struct git_index_entry)"
		end

	c_ctime (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((struct git_index_entry*)$an_item)->ctime
			]"
		end

	set_c_ctime (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->ctime =  *(git_index_time*)$a_value
			]"
		end

	c_mtime (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((struct git_index_entry*)$an_item)->mtime
			]"
		end

	set_c_mtime (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->mtime =  *(git_index_time*)$a_value
			]"
		end

	c_dev (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->dev
			]"
		end

	set_c_dev (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->dev =  (uint32_t)$a_value
			]"
		ensure
			dev_set: a_value = c_dev (an_item)
		end

	c_ino (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->ino
			]"
		end

	set_c_ino (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->ino =  (uint32_t)$a_value
			]"
		ensure
			ino_set: a_value = c_ino (an_item)
		end

	c_mode (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->mode
			]"
		end

	set_c_mode (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->mode =  (uint32_t)$a_value
			]"
		ensure
			mode_set: a_value = c_mode (an_item)
		end

	c_uid (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->uid
			]"
		end

	set_c_uid (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->uid =  (uint32_t)$a_value
			]"
		ensure
			uid_set: a_value = c_uid (an_item)
		end

	c_gid (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->gid
			]"
		end

	set_c_gid (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->gid =  (uint32_t)$a_value
			]"
		ensure
			gid_set: a_value = c_gid (an_item)
		end

	c_file_size (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->file_size
			]"
		end

	set_c_file_size (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->file_size =  (uint32_t)$a_value
			]"
		ensure
			file_size_set: a_value = c_file_size (an_item)
		end

	c_id (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((struct git_index_entry*)$an_item)->id
			]"
		end

	set_c_id (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->id =  *(git_oid*)$a_value
			]"
		end

	c_flags (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->flags
			]"
		end

	set_c_flags (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->flags =  (uint16_t)$a_value
			]"
		ensure
			flags_set: a_value = c_flags (an_item)
		end

	c_flags_extended (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->flags_extended
			]"
		end

	set_c_flags_extended (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->flags_extended =  (uint16_t)$a_value
			]"
		ensure
			flags_extended_set: a_value = c_flags_extended (an_item)
		end

	c_path (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->path
			]"
		end

	set_c_path (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((struct git_index_entry*)$an_item)->path =  (char const*)$a_value
			]"
		ensure
			path_set: a_value = c_path (an_item)
		end

end
