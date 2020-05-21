note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class EWG_LIBGIT2_CALLBACK_C_GLUE_CODE_FUNCTIONS_API


feature -- Access

	set_git_index_matched_path_cb_object (a_class: POINTER) 
		do
			c_set_git_index_matched_path_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_index_matched_path_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_index_matched_path_cb_object ();
			]"
		end

	get_git_index_matched_path_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_index_matched_path_cb_stub_1 ();
			]"
		end

	get_git_index_matched_path_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_index_matched_path_cb_stub_2 ();
			]"
		end

	get_git_index_matched_path_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_index_matched_path_cb_stub_3 ();
			]"
		end

	set_git_index_matched_path_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_index_matched_path_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_index_matched_path_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_index_matched_path_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_index_matched_path_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_index_matched_path_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_index_matched_path_cb (a_function: POINTER; path: STRING_8; matched_pathspec: STRING_8; payload: POINTER): INTEGER 
		local
			path_c_string: C_STRING
			matched_pathspec_c_string: C_STRING
		do
			create path_c_string.make (path)
			create matched_pathspec_c_string.make (matched_pathspec)
			Result := c_call_git_index_matched_path_cb (a_function, path_c_string.item, matched_pathspec_c_string.item, payload)
		ensure
			instance_free: class
		end

	set_git_status_cb_object (a_class: POINTER) 
		do
			c_set_git_status_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_status_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_status_cb_object ();
			]"
		end

	get_git_status_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_status_cb_stub_1 ();
			]"
		end

	get_git_status_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_status_cb_stub_2 ();
			]"
		end

	get_git_status_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_status_cb_stub_3 ();
			]"
		end

	set_git_status_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_status_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_status_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_status_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_status_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_status_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_status_cb (a_function: POINTER; path: STRING_8; status_flags: INTEGER; payload: POINTER): INTEGER 
		local
			path_c_string: C_STRING
		do
			create path_c_string.make (path)
			Result := c_call_git_status_cb (a_function, path_c_string.item, status_flags, payload)
		ensure
			instance_free: class
		end

	set_git_submodule_cb_object (a_class: POINTER) 
		do
			c_set_git_submodule_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_submodule_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_submodule_cb_object ();
			]"
		end

	get_git_submodule_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_submodule_cb_stub_1 ();
			]"
		end

	get_git_submodule_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_submodule_cb_stub_2 ();
			]"
		end

	get_git_submodule_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_submodule_cb_stub_3 ();
			]"
		end

	set_git_submodule_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_submodule_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_submodule_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_submodule_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_submodule_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_submodule_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_submodule_cb (a_function: POINTER; sm: GIT_SUBMODULE_STRUCT_API; name: STRING_8; payload: POINTER): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_call_git_submodule_cb (a_function, sm.item, name_c_string.item, payload)
		ensure
			instance_free: class
		end

	set_git_tag_foreach_cb_object (a_class: POINTER) 
		do
			c_set_git_tag_foreach_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_tag_foreach_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_tag_foreach_cb_object ();
			]"
		end

	get_git_tag_foreach_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_tag_foreach_cb_stub_1 ();
			]"
		end

	get_git_tag_foreach_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_tag_foreach_cb_stub_2 ();
			]"
		end

	get_git_tag_foreach_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_tag_foreach_cb_stub_3 ();
			]"
		end

	set_git_tag_foreach_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_tag_foreach_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_tag_foreach_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_tag_foreach_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_tag_foreach_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_tag_foreach_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_tag_foreach_cb (a_function: POINTER; name: STRING_8; oid: GIT_OID_STRUCT_API; payload: POINTER): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_call_git_tag_foreach_cb (a_function, name_c_string.item, oid.item, payload)
		ensure
			instance_free: class
		end

	set_git_checkout_progress_cb_object (a_class: POINTER) 
		do
			c_set_git_checkout_progress_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_checkout_progress_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_checkout_progress_cb_object ();
			]"
		end

	get_git_checkout_progress_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_checkout_progress_cb_stub_1 ();
			]"
		end

	get_git_checkout_progress_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_checkout_progress_cb_stub_2 ();
			]"
		end

	get_git_checkout_progress_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_checkout_progress_cb_stub_3 ();
			]"
		end

	set_git_checkout_progress_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_checkout_progress_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_checkout_progress_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_checkout_progress_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_checkout_progress_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_checkout_progress_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_checkout_progress_cb (a_function: POINTER; path: STRING_8; completed_steps: INTEGER; total_steps: INTEGER; payload: POINTER) 
		local
			path_c_string: C_STRING
		do
			create path_c_string.make (path)
			c_call_git_checkout_progress_cb (a_function, path_c_string.item, completed_steps, total_steps, payload)
		ensure
			instance_free: class
		end

	set_git_checkout_perfdata_cb_object (a_class: POINTER) 
		do
			c_set_git_checkout_perfdata_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_checkout_perfdata_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_checkout_perfdata_cb_object ();
			]"
		end

	get_git_checkout_perfdata_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_checkout_perfdata_cb_stub_1 ();
			]"
		end

	get_git_checkout_perfdata_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_checkout_perfdata_cb_stub_2 ();
			]"
		end

	get_git_checkout_perfdata_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_checkout_perfdata_cb_stub_3 ();
			]"
		end

	set_git_checkout_perfdata_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_checkout_perfdata_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_checkout_perfdata_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_checkout_perfdata_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_checkout_perfdata_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_checkout_perfdata_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_checkout_perfdata_cb (a_function: POINTER; perfdata: GIT_CHECKOUT_PERFDATA_STRUCT_API; payload: POINTER) 
		do
			c_call_git_checkout_perfdata_cb (a_function, perfdata.item, payload)
		ensure
			instance_free: class
		end

	set_git_indexer_progress_cb_object (a_class: POINTER) 
		do
			c_set_git_indexer_progress_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_indexer_progress_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_indexer_progress_cb_object ();
			]"
		end

	get_git_indexer_progress_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_indexer_progress_cb_stub_1 ();
			]"
		end

	get_git_indexer_progress_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_indexer_progress_cb_stub_2 ();
			]"
		end

	get_git_indexer_progress_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_indexer_progress_cb_stub_3 ();
			]"
		end

	set_git_indexer_progress_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_indexer_progress_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_indexer_progress_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_indexer_progress_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_indexer_progress_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_indexer_progress_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_indexer_progress_cb (a_function: POINTER; stats: GIT_INDEXER_PROGRESS_STRUCT_API; payload: POINTER): INTEGER 
		do
			Result := c_call_git_indexer_progress_cb (a_function, stats.item, payload)
		ensure
			instance_free: class
		end

	set_git_transport_message_cb_object (a_class: POINTER) 
		do
			c_set_git_transport_message_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_transport_message_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_transport_message_cb_object ();
			]"
		end

	get_git_transport_message_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_transport_message_cb_stub_1 ();
			]"
		end

	get_git_transport_message_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_transport_message_cb_stub_2 ();
			]"
		end

	get_git_transport_message_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_transport_message_cb_stub_3 ();
			]"
		end

	set_git_transport_message_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_transport_message_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_transport_message_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_transport_message_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_transport_message_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_transport_message_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_transport_message_cb (a_function: POINTER; str: STRING_8; len: INTEGER; payload: POINTER): INTEGER 
		local
			str_c_string: C_STRING
		do
			create str_c_string.make (str)
			Result := c_call_git_transport_message_cb (a_function, str_c_string.item, len, payload)
		ensure
			instance_free: class
		end

	set_git_credential_acquire_cb_object (a_class: POINTER) 
		do
			c_set_git_credential_acquire_cb_object (a_class)
		ensure
			instance_free: class
		end

	release_git_credential_acquire_cb_object
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				release_git_credential_acquire_cb_object ();
			]"
		end

	get_git_credential_acquire_cb_stub_1: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_credential_acquire_cb_stub_1 ();
			]"
		end

	get_git_credential_acquire_cb_stub_2: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_credential_acquire_cb_stub_2 ();
			]"
		end

	get_git_credential_acquire_cb_stub_3: POINTER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return get_git_credential_acquire_cb_stub_3 ();
			]"
		end

	set_git_credential_acquire_cb_entry_1 (a_feature: POINTER) 
		do
			c_set_git_credential_acquire_cb_entry_1 (a_feature)
		ensure
			instance_free: class
		end

	set_git_credential_acquire_cb_entry_2 (a_feature: POINTER) 
		do
			c_set_git_credential_acquire_cb_entry_2 (a_feature)
		ensure
			instance_free: class
		end

	set_git_credential_acquire_cb_entry_3 (a_feature: POINTER) 
		do
			c_set_git_credential_acquire_cb_entry_3 (a_feature)
		ensure
			instance_free: class
		end

	call_git_credential_acquire_cb (a_function: POINTER; a_out: GIT_CREDENTIAL_STRUCT_API; url: STRING_8; username_from_url: STRING_8; allowed_types: INTEGER; payload: POINTER): INTEGER 
		local
			url_c_string: C_STRING
			username_from_url_c_string: C_STRING
		do
			create url_c_string.make (url)
			create username_from_url_c_string.make (username_from_url)
			Result := c_call_git_credential_acquire_cb (a_function, a_out.item, url_c_string.item, username_from_url_c_string.item, allowed_types, payload)
		ensure
			instance_free: class
		end

feature -- Externals

	c_set_git_index_matched_path_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_index_matched_path_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_index_matched_path_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_index_matched_path_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_index_matched_path_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_index_matched_path_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_index_matched_path_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_index_matched_path_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_index_matched_path_cb (a_function: POINTER; path: POINTER; matched_pathspec: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return call_git_index_matched_path_cb ((void*)$a_function, (char const*)$path, (char const*)$matched_pathspec, (void*)$payload);
			]"
		end

	c_set_git_status_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_status_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_status_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_status_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_status_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_status_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_status_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_status_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_status_cb (a_function: POINTER; path: POINTER; status_flags: INTEGER; payload: POINTER): INTEGER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return call_git_status_cb ((void*)$a_function, (char const*)$path, (unsigned int)$status_flags, (void*)$payload);
			]"
		end

	c_set_git_submodule_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_submodule_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_submodule_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_submodule_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_submodule_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_submodule_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_submodule_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_submodule_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_submodule_cb (a_function: POINTER; sm: POINTER; name: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return call_git_submodule_cb ((void*)$a_function, (git_submodule*)$sm, (char const*)$name, (void*)$payload);
			]"
		end

	c_set_git_tag_foreach_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_tag_foreach_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_tag_foreach_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_tag_foreach_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_tag_foreach_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_tag_foreach_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_tag_foreach_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_tag_foreach_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_tag_foreach_cb (a_function: POINTER; name: POINTER; oid: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return call_git_tag_foreach_cb ((void*)$a_function, (char const*)$name, (git_oid*)$oid, (void*)$payload);
			]"
		end

	c_set_git_checkout_progress_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_checkout_progress_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_checkout_progress_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_checkout_progress_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_checkout_progress_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_checkout_progress_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_checkout_progress_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_checkout_progress_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_checkout_progress_cb (a_function: POINTER; path: POINTER; completed_steps: INTEGER; total_steps: INTEGER; payload: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				call_git_checkout_progress_cb ((void*)$a_function, (char const*)$path, (size_t)$completed_steps, (size_t)$total_steps, (void*)$payload);
			]"
		end

	c_set_git_checkout_perfdata_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_checkout_perfdata_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_checkout_perfdata_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_checkout_perfdata_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_checkout_perfdata_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_checkout_perfdata_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_checkout_perfdata_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_checkout_perfdata_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_checkout_perfdata_cb (a_function: POINTER; perfdata: POINTER; payload: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				call_git_checkout_perfdata_cb ((void*)$a_function, (git_checkout_perfdata const*)$perfdata, (void*)$payload);
			]"
		end

	c_set_git_indexer_progress_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_indexer_progress_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_indexer_progress_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_indexer_progress_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_indexer_progress_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_indexer_progress_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_indexer_progress_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_indexer_progress_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_indexer_progress_cb (a_function: POINTER; stats: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return call_git_indexer_progress_cb ((void*)$a_function, (git_indexer_progress const*)$stats, (void*)$payload);
			]"
		end

	c_set_git_transport_message_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_transport_message_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_transport_message_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_transport_message_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_transport_message_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_transport_message_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_transport_message_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_transport_message_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_transport_message_cb (a_function: POINTER; str: POINTER; len: INTEGER; payload: POINTER): INTEGER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return call_git_transport_message_cb ((void*)$a_function, (char const*)$str, (int)$len, (void*)$payload);
			]"
		end

	c_set_git_credential_acquire_cb_object (a_class: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_credential_acquire_cb_object ((void*)$a_class);
			]"
		end

	c_set_git_credential_acquire_cb_entry_1 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_credential_acquire_cb_entry_1 ((void*)$a_feature);
			]"
		end

	c_set_git_credential_acquire_cb_entry_2 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_credential_acquire_cb_entry_2 ((void*)$a_feature);
			]"
		end

	c_set_git_credential_acquire_cb_entry_3 (a_feature: POINTER)
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				set_git_credential_acquire_cb_entry_3 ((void*)$a_feature);
			]"
		end

	c_call_git_credential_acquire_cb (a_function: POINTER; a_out: POINTER; url: POINTER; username_from_url: POINTER; allowed_types: INTEGER; payload: POINTER): INTEGER
		external
			"C inline use <ewg_libgit2_callback_c_glue_code.h>"
		alias
			"[
				return call_git_credential_acquire_cb ((void*)$a_function, (git_credential**)$a_out, (char const*)$url, (char const*)$username_from_url, (unsigned int)$allowed_types, (void*)$payload);
			]"
		end

feature -- Externals Address

end
