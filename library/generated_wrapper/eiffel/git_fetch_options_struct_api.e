note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GIT_FETCH_OPTIONS_STRUCT_API

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

	callbacks: detachable GIT_REMOTE_CALLBACKS_STRUCT_API
			-- Access member `callbacks`
		require
			exists: exists
		do
			if attached c_callbacks (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_callbacks (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_callbacks (item) 
		end

	set_callbacks (a_value: GIT_REMOTE_CALLBACKS_STRUCT_API) 
			-- Set member `callbacks`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_callbacks (item, a_value.item)
		ensure
			callbacks_set: attached callbacks as l_value implies l_value.item = a_value.item
		end

	prune: INTEGER
			-- Access member `prune`
		require
			exists: exists
		do
			Result := c_prune (item)
		ensure
			result_correct: Result = c_prune (item)
		end

	set_prune (a_value: INTEGER) 
			-- Change the value of member `prune` to `a_value`.
		require
			exists: exists
		do
			set_c_prune (item, a_value)
		ensure
			prune_set: a_value = prune
		end

	update_fetchhead: INTEGER
			-- Access member `update_fetchhead`
		require
			exists: exists
		do
			Result := c_update_fetchhead (item)
		ensure
			result_correct: Result = c_update_fetchhead (item)
		end

	set_update_fetchhead (a_value: INTEGER) 
			-- Change the value of member `update_fetchhead` to `a_value`.
		require
			exists: exists
		do
			set_c_update_fetchhead (item, a_value)
		ensure
			update_fetchhead_set: a_value = update_fetchhead
		end

	download_tags: INTEGER
			-- Access member `download_tags`
		require
			exists: exists
		do
			Result := c_download_tags (item)
		ensure
			result_correct: Result = c_download_tags (item)
		end

	set_download_tags (a_value: INTEGER) 
			-- Change the value of member `download_tags` to `a_value`.
		require
			exists: exists
		do
			set_c_download_tags (item, a_value)
		ensure
			download_tags_set: a_value = download_tags
		end

	proxy_opts: detachable GIT_PROXY_OPTIONS_STRUCT_API
			-- Access member `proxy_opts`
		require
			exists: exists
		do
			if attached c_proxy_opts (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_proxy_opts (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_proxy_opts (item) 
		end

	set_proxy_opts (a_value: GIT_PROXY_OPTIONS_STRUCT_API) 
			-- Set member `proxy_opts`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_proxy_opts (item, a_value.item)
		ensure
			proxy_opts_set: attached proxy_opts as l_value implies l_value.item = a_value.item
		end

	custom_headers: detachable GIT_STRARRAY_STRUCT_API
			-- Access member `custom_headers`
		require
			exists: exists
		do
			if attached c_custom_headers (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_custom_headers (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_custom_headers (item) 
		end

	set_custom_headers (a_value: GIT_STRARRAY_STRUCT_API) 
			-- Set member `custom_headers`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_custom_headers (item, a_value.item)
		ensure
			custom_headers_set: attached custom_headers as l_value implies l_value.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct git_fetch_options

	sizeof_external: INTEGER 
		external
			"C inline use <git2.h>"
		alias
			"sizeof(git_fetch_options)"
		end

	c_version (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->version
			]"
		end

	set_c_version (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->version =  (int)$a_value
			]"
		ensure
			version_set: a_value = c_version (an_item)
		end

	c_callbacks (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((git_fetch_options*)$an_item)->callbacks
			]"
		end

	set_c_callbacks (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->callbacks =  *(git_remote_callbacks*)$a_value
			]"
		end

	c_prune (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->prune
			]"
		end

	set_c_prune (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->prune =  (git_fetch_prune_t)$a_value
			]"
		ensure
			prune_set: a_value = c_prune (an_item)
		end

	c_update_fetchhead (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->update_fetchhead
			]"
		end

	set_c_update_fetchhead (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->update_fetchhead =  (int)$a_value
			]"
		ensure
			update_fetchhead_set: a_value = c_update_fetchhead (an_item)
		end

	c_download_tags (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->download_tags
			]"
		end

	set_c_download_tags (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->download_tags =  (git_remote_autotag_option_t)$a_value
			]"
		ensure
			download_tags_set: a_value = c_download_tags (an_item)
		end

	c_proxy_opts (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((git_fetch_options*)$an_item)->proxy_opts
			]"
		end

	set_c_proxy_opts (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->proxy_opts =  *(git_proxy_options*)$a_value
			]"
		end

	c_custom_headers (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				&((git_fetch_options*)$an_item)->custom_headers
			]"
		end

	set_c_custom_headers (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <git2.h>"
		alias
			"[
				((git_fetch_options*)$an_item)->custom_headers =  *(git_strarray*)$a_value
			]"
		end

end