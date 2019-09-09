note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GIT_REPOSITORY_INIT_OPTIONS_STRUCT_API

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

	version: INTEGER
			-- Access member `version`
		require
			exists: exists
		do
			Result := c_version (item)
		ensure
			result_correct: Result = c_version (item)
		end

	set_version (a_value: INTEGER) 
			-- Change the value of member `version` to `a_value`.
		require
			exists: exists
		do
			set_c_version (item, a_value)
		ensure
			version_set: a_value = version
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

	workdir_path:  detachable STRING
			-- Access member `workdir_path`
		require
			exists: exists
		do
			if attached c_workdir_path (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_workdir_path (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_workdir_path (a_value: STRING) 
			-- Change the value of member `workdir_path` to `a_value`.
		require
			exists: exists
		do
			set_c_workdir_path (item, (create {C_STRING}.make (a_value)).item )
		end

	description:  detachable STRING
			-- Access member `description`
		require
			exists: exists
		do
			if attached c_description (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_description (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_description (a_value: STRING) 
			-- Change the value of member `description` to `a_value`.
		require
			exists: exists
		do
			set_c_description (item, (create {C_STRING}.make (a_value)).item )
		end

	template_path:  detachable STRING
			-- Access member `template_path`
		require
			exists: exists
		do
			if attached c_template_path (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_template_path (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_template_path (a_value: STRING) 
			-- Change the value of member `template_path` to `a_value`.
		require
			exists: exists
		do
			set_c_template_path (item, (create {C_STRING}.make (a_value)).item )
		end

	initial_head:  detachable STRING
			-- Access member `initial_head`
		require
			exists: exists
		do
			if attached c_initial_head (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_initial_head (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_initial_head (a_value: STRING) 
			-- Change the value of member `initial_head` to `a_value`.
		require
			exists: exists
		do
			set_c_initial_head (item, (create {C_STRING}.make (a_value)).item )
		end

	origin_url:  detachable STRING
			-- Access member `origin_url`
		require
			exists: exists
		do
			if attached c_origin_url (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_origin_url (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_origin_url (a_value: STRING) 
			-- Change the value of member `origin_url` to `a_value`.
		require
			exists: exists
		do
			set_c_origin_url (item, (create {C_STRING}.make (a_value)).item )
		end

feature {NONE} -- Implementation wrapper for struct git_repository_init_options

	sizeof_external: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"sizeof(git_repository_init_options)"
		end

	c_version (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->version
			]"
		end

	set_c_version (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->version =  (unsigned int)$a_value
			]"
		ensure
			version_set: a_value = c_version (an_item)
		end

	c_flags (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->flags
			]"
		end

	set_c_flags (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->flags =  (uint32_t)$a_value
			]"
		ensure
			flags_set: a_value = c_flags (an_item)
		end

	c_mode (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->mode
			]"
		end

	set_c_mode (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->mode =  (uint32_t)$a_value
			]"
		ensure
			mode_set: a_value = c_mode (an_item)
		end

	c_workdir_path (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->workdir_path
			]"
		end

	set_c_workdir_path (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->workdir_path =  (char const*)$a_value
			]"
		ensure
			workdir_path_set: a_value = c_workdir_path (an_item)
		end

	c_description (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->description
			]"
		end

	set_c_description (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->description =  (char const*)$a_value
			]"
		ensure
			description_set: a_value = c_description (an_item)
		end

	c_template_path (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->template_path
			]"
		end

	set_c_template_path (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->template_path =  (char const*)$a_value
			]"
		ensure
			template_path_set: a_value = c_template_path (an_item)
		end

	c_initial_head (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->initial_head
			]"
		end

	set_c_initial_head (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->initial_head =  (char const*)$a_value
			]"
		ensure
			initial_head_set: a_value = c_initial_head (an_item)
		end

	c_origin_url (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->origin_url
			]"
		end

	set_c_origin_url (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_repository_init_options*)$an_item)->origin_url =  (char const*)$a_value
			]"
		ensure
			origin_url_set: a_value = c_origin_url (an_item)
		end

end
