note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_REMOTE_API


feature -- Access

	git_remote_create (a_out: GIT_REMOTE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; url: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			url_c_string: C_STRING
		do
			create name_c_string.make (name)
			create url_c_string.make (url)
			Result := c_git_remote_create (a_out.item, repo.item, name_c_string.item, url_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_create_options_init (opts: GIT_REMOTE_CREATE_OPTIONS_STRUCT_API; version: INTEGER): INTEGER 
		do
			Result := c_git_remote_create_options_init (opts.item, version)
		ensure
			instance_free: class
		end

	git_remote_create_with_opts (a_out: GIT_REMOTE_STRUCT_API; url: STRING_8; opts: GIT_REMOTE_CREATE_OPTIONS_STRUCT_API): INTEGER 
		local
			url_c_string: C_STRING
		do
			create url_c_string.make (url)
			Result := c_git_remote_create_with_opts (a_out.item, url_c_string.item, opts.item)
		ensure
			instance_free: class
		end

	git_remote_create_with_fetchspec (a_out: GIT_REMOTE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; url: STRING_8; fetch: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			url_c_string: C_STRING
			fetch_c_string: C_STRING
		do
			create name_c_string.make (name)
			create url_c_string.make (url)
			create fetch_c_string.make (fetch)
			Result := c_git_remote_create_with_fetchspec (a_out.item, repo.item, name_c_string.item, url_c_string.item, fetch_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_create_anonymous (a_out: GIT_REMOTE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; url: STRING_8): INTEGER 
		local
			url_c_string: C_STRING
		do
			create url_c_string.make (url)
			Result := c_git_remote_create_anonymous (a_out.item, repo.item, url_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_create_detached (a_out: GIT_REMOTE_STRUCT_API; url: STRING_8): INTEGER 
		local
			url_c_string: C_STRING
		do
			create url_c_string.make (url)
			Result := c_git_remote_create_detached (a_out.item, url_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_lookup (a_out: GIT_REMOTE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_remote_lookup (a_out.item, repo.item, name_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_dup (dest: GIT_REMOTE_STRUCT_API; source: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_dup (dest.item, source.item)
		ensure
			instance_free: class
		end

	git_remote_owner (remote: GIT_REMOTE_STRUCT_API): detachable GIT_REPOSITORY_STRUCT_API 
		do
			if attached c_git_remote_owner (remote.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_remote_name (remote: GIT_REMOTE_STRUCT_API): POINTER 
		do
			Result := c_git_remote_name (remote.item)
		ensure
			instance_free: class
		end

	git_remote_url (remote: GIT_REMOTE_STRUCT_API): POINTER 
		do
			Result := c_git_remote_url (remote.item)
		ensure
			instance_free: class
		end

	git_remote_pushurl (remote: GIT_REMOTE_STRUCT_API): POINTER 
		do
			Result := c_git_remote_pushurl (remote.item)
		ensure
			instance_free: class
		end

	git_remote_set_url (repo: GIT_REPOSITORY_STRUCT_API; remote: STRING_8; url: STRING_8): INTEGER 
		local
			remote_c_string: C_STRING
			url_c_string: C_STRING
		do
			create remote_c_string.make (remote)
			create url_c_string.make (url)
			Result := c_git_remote_set_url (repo.item, remote_c_string.item, url_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_set_pushurl (repo: GIT_REPOSITORY_STRUCT_API; remote: STRING_8; url: STRING_8): INTEGER 
		local
			remote_c_string: C_STRING
			url_c_string: C_STRING
		do
			create remote_c_string.make (remote)
			create url_c_string.make (url)
			Result := c_git_remote_set_pushurl (repo.item, remote_c_string.item, url_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_add_fetch (repo: GIT_REPOSITORY_STRUCT_API; remote: STRING_8; refspec: STRING_8): INTEGER 
		local
			remote_c_string: C_STRING
			refspec_c_string: C_STRING
		do
			create remote_c_string.make (remote)
			create refspec_c_string.make (refspec)
			Result := c_git_remote_add_fetch (repo.item, remote_c_string.item, refspec_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_get_fetch_refspecs (array: GIT_STRARRAY_STRUCT_API; remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_get_fetch_refspecs (array.item, remote.item)
		ensure
			instance_free: class
		end

	git_remote_add_push (repo: GIT_REPOSITORY_STRUCT_API; remote: STRING_8; refspec: STRING_8): INTEGER 
		local
			remote_c_string: C_STRING
			refspec_c_string: C_STRING
		do
			create remote_c_string.make (remote)
			create refspec_c_string.make (refspec)
			Result := c_git_remote_add_push (repo.item, remote_c_string.item, refspec_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_get_push_refspecs (array: GIT_STRARRAY_STRUCT_API; remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_get_push_refspecs (array.item, remote.item)
		ensure
			instance_free: class
		end

	git_remote_refspec_count (remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_refspec_count (remote.item)
		ensure
			instance_free: class
		end

	git_remote_connect (remote: GIT_REMOTE_STRUCT_API; direction: INTEGER; callbacks: GIT_REMOTE_CALLBACKS_STRUCT_API; proxy_opts: GIT_PROXY_OPTIONS_STRUCT_API; custom_headers: GIT_STRARRAY_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_connect (remote.item, direction, callbacks.item, proxy_opts.item, custom_headers.item)
		ensure
			instance_free: class
		end

	git_remote_ls (a_out: GIT_REMOTE_HEAD_STRUCT_API; size: POINTER; remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_ls (a_out.item, size, remote.item)
		ensure
			instance_free: class
		end

	git_remote_connected (remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_connected (remote.item)
		ensure
			instance_free: class
		end

	git_remote_stop (remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_stop (remote.item)
		ensure
			instance_free: class
		end

	git_remote_disconnect (remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_disconnect (remote.item)
		ensure
			instance_free: class
		end

	git_remote_free (remote: GIT_REMOTE_STRUCT_API) 
		do
			c_git_remote_free (remote.item)
		ensure
			instance_free: class
		end

	git_remote_list (a_out: GIT_STRARRAY_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_list (a_out.item, repo.item)
		ensure
			instance_free: class
		end

	git_remote_init_callbacks (opts: GIT_REMOTE_CALLBACKS_STRUCT_API; version: INTEGER): INTEGER 
		do
			Result := c_git_remote_init_callbacks (opts.item, version)
		ensure
			instance_free: class
		end

	git_remote_download (remote: GIT_REMOTE_STRUCT_API; refspecs: GIT_STRARRAY_STRUCT_API; opts: GIT_FETCH_OPTIONS_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_download (remote.item, refspecs.item, opts.item)
		ensure
			instance_free: class
		end

	git_remote_upload (remote: GIT_REMOTE_STRUCT_API; refspecs: GIT_STRARRAY_STRUCT_API; opts: GIT_PUSH_OPTIONS_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_upload (remote.item, refspecs.item, opts.item)
		ensure
			instance_free: class
		end

	git_remote_update_tips (remote: GIT_REMOTE_STRUCT_API; callbacks: GIT_REMOTE_CALLBACKS_STRUCT_API; update_fetchhead: INTEGER; download_tags: INTEGER; reflog_message: STRING_8): INTEGER 
		local
			reflog_message_c_string: C_STRING
		do
			create reflog_message_c_string.make (reflog_message)
			Result := c_git_remote_update_tips (remote.item, callbacks.item, update_fetchhead, download_tags, reflog_message_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_fetch (remote: GIT_REMOTE_STRUCT_API; refspecs: GIT_STRARRAY_STRUCT_API; opts: GIT_FETCH_OPTIONS_STRUCT_API; reflog_message: STRING_8): INTEGER 
		local
			reflog_message_c_string: C_STRING
		do
			create reflog_message_c_string.make (reflog_message)
			Result := c_git_remote_fetch (remote.item, refspecs.item, opts.item, reflog_message_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_prune (remote: GIT_REMOTE_STRUCT_API; callbacks: GIT_REMOTE_CALLBACKS_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_prune (remote.item, callbacks.item)
		ensure
			instance_free: class
		end

	git_remote_push (remote: GIT_REMOTE_STRUCT_API; refspecs: GIT_STRARRAY_STRUCT_API; opts: GIT_PUSH_OPTIONS_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_push (remote.item, refspecs.item, opts.item)
		ensure
			instance_free: class
		end

	git_remote_stats (remote: GIT_REMOTE_STRUCT_API): detachable GIT_INDEXER_PROGRESS_STRUCT_API 
		do
			if attached c_git_remote_stats (remote.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_remote_autotag (remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_autotag (remote.item)
		ensure
			instance_free: class
		end

	git_remote_set_autotag (repo: GIT_REPOSITORY_STRUCT_API; remote: STRING_8; value: INTEGER): INTEGER 
		local
			remote_c_string: C_STRING
		do
			create remote_c_string.make (remote)
			Result := c_git_remote_set_autotag (repo.item, remote_c_string.item, value)
		ensure
			instance_free: class
		end

	git_remote_prune_refs (remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_prune_refs (remote.item)
		ensure
			instance_free: class
		end

	git_remote_rename (problems: GIT_STRARRAY_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8; new_name: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
			new_name_c_string: C_STRING
		do
			create name_c_string.make (name)
			create new_name_c_string.make (new_name)
			Result := c_git_remote_rename (problems.item, repo.item, name_c_string.item, new_name_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_is_valid_name (remote_name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_is_valid_name ((char const*)$remote_name);
			]"
		end

	git_remote_delete (repo: GIT_REPOSITORY_STRUCT_API; name: STRING_8): INTEGER 
		local
			name_c_string: C_STRING
		do
			create name_c_string.make (name)
			Result := c_git_remote_delete (repo.item, name_c_string.item)
		ensure
			instance_free: class
		end

	git_remote_default_branch (a_out: GIT_BUF_STRUCT_API; remote: GIT_REMOTE_STRUCT_API): INTEGER 
		do
			Result := c_git_remote_default_branch (a_out.item, remote.item)
		ensure
			instance_free: class
		end

	git_push_init_options (opts: GIT_PUSH_OPTIONS_STRUCT_API; version: INTEGER): INTEGER 
		do
			Result := c_git_push_init_options (opts.item, version)
		ensure
			instance_free: class
		end

	git_remote_create_init_options (opts: GIT_REMOTE_CREATE_OPTIONS_STRUCT_API; version: INTEGER): INTEGER 
		do
			Result := c_git_remote_create_init_options (opts.item, version)
		ensure
			instance_free: class
		end

feature -- Externals

	c_git_remote_create (a_out: POINTER; repo: POINTER; name: POINTER; url: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_create ((git_remote**)$a_out, (git_repository*)$repo, (char const*)$name, (char const*)$url);
			]"
		end

	c_git_remote_create_options_init (opts: POINTER; version: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_create_options_init ((git_remote_create_options*)$opts, (unsigned int)$version);
			]"
		end

	c_git_remote_create_with_opts (a_out: POINTER; url: POINTER; opts: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_create_with_opts ((git_remote**)$a_out, (char const*)$url, (git_remote_create_options const*)$opts);
			]"
		end

	c_git_remote_create_with_fetchspec (a_out: POINTER; repo: POINTER; name: POINTER; url: POINTER; fetch: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_create_with_fetchspec ((git_remote**)$a_out, (git_repository*)$repo, (char const*)$name, (char const*)$url, (char const*)$fetch);
			]"
		end

	c_git_remote_create_anonymous (a_out: POINTER; repo: POINTER; url: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_create_anonymous ((git_remote**)$a_out, (git_repository*)$repo, (char const*)$url);
			]"
		end

	c_git_remote_create_detached (a_out: POINTER; url: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_create_detached ((git_remote**)$a_out, (char const*)$url);
			]"
		end

	c_git_remote_lookup (a_out: POINTER; repo: POINTER; name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_lookup ((git_remote**)$a_out, (git_repository*)$repo, (char const*)$name);
			]"
		end

	c_git_remote_dup (dest: POINTER; source: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_dup ((git_remote**)$dest, (git_remote*)$source);
			]"
		end

	c_git_remote_owner (remote: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_owner ((git_remote const*)$remote);
			]"
		end

	c_git_remote_name (remote: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_name ((git_remote const*)$remote);
			]"
		end

	c_git_remote_url (remote: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_url ((git_remote const*)$remote);
			]"
		end

	c_git_remote_pushurl (remote: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_pushurl ((git_remote const*)$remote);
			]"
		end

	c_git_remote_set_url (repo: POINTER; remote: POINTER; url: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_set_url ((git_repository*)$repo, (char const*)$remote, (char const*)$url);
			]"
		end

	c_git_remote_set_pushurl (repo: POINTER; remote: POINTER; url: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_set_pushurl ((git_repository*)$repo, (char const*)$remote, (char const*)$url);
			]"
		end

	c_git_remote_add_fetch (repo: POINTER; remote: POINTER; refspec: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_add_fetch ((git_repository*)$repo, (char const*)$remote, (char const*)$refspec);
			]"
		end

	c_git_remote_get_fetch_refspecs (array: POINTER; remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_get_fetch_refspecs ((git_strarray*)$array, (git_remote const*)$remote);
			]"
		end

	c_git_remote_add_push (repo: POINTER; remote: POINTER; refspec: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_add_push ((git_repository*)$repo, (char const*)$remote, (char const*)$refspec);
			]"
		end

	c_git_remote_get_push_refspecs (array: POINTER; remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_get_push_refspecs ((git_strarray*)$array, (git_remote const*)$remote);
			]"
		end

	c_git_remote_refspec_count (remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_refspec_count ((git_remote const*)$remote);
			]"
		end

	c_git_remote_connect (remote: POINTER; direction: INTEGER; callbacks: POINTER; proxy_opts: POINTER; custom_headers: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_connect ((git_remote*)$remote, (git_direction)$direction, (git_remote_callbacks const*)$callbacks, (git_proxy_options const*)$proxy_opts, (git_strarray const*)$custom_headers);
			]"
		end

	c_git_remote_ls (a_out: POINTER; size: POINTER; remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_ls ((git_remote_head const***)$a_out, (size_t*)$size, (git_remote*)$remote);
			]"
		end

	c_git_remote_connected (remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_connected ((git_remote const*)$remote);
			]"
		end

	c_git_remote_stop (remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_stop ((git_remote*)$remote);
			]"
		end

	c_git_remote_disconnect (remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_disconnect ((git_remote*)$remote);
			]"
		end

	c_git_remote_free (remote: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_remote_free ((git_remote*)$remote);
			]"
		end

	c_git_remote_list (a_out: POINTER; repo: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_list ((git_strarray*)$a_out, (git_repository*)$repo);
			]"
		end

	c_git_remote_init_callbacks (opts: POINTER; version: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_init_callbacks ((git_remote_callbacks*)$opts, (unsigned int)$version);
			]"
		end

	c_git_remote_download (remote: POINTER; refspecs: POINTER; opts: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_download ((git_remote*)$remote, (git_strarray const*)$refspecs, (git_fetch_options const*)$opts);
			]"
		end

	c_git_remote_upload (remote: POINTER; refspecs: POINTER; opts: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_upload ((git_remote*)$remote, (git_strarray const*)$refspecs, (git_push_options const*)$opts);
			]"
		end

	c_git_remote_update_tips (remote: POINTER; callbacks: POINTER; update_fetchhead: INTEGER; download_tags: INTEGER; reflog_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_update_tips ((git_remote*)$remote, (git_remote_callbacks const*)$callbacks, (int)$update_fetchhead, (git_remote_autotag_option_t)$download_tags, (char const*)$reflog_message);
			]"
		end

	c_git_remote_fetch (remote: POINTER; refspecs: POINTER; opts: POINTER; reflog_message: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_fetch ((git_remote*)$remote, (git_strarray const*)$refspecs, (git_fetch_options const*)$opts, (char const*)$reflog_message);
			]"
		end

	c_git_remote_prune (remote: POINTER; callbacks: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_prune ((git_remote*)$remote, (git_remote_callbacks const*)$callbacks);
			]"
		end

	c_git_remote_push (remote: POINTER; refspecs: POINTER; opts: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_push ((git_remote*)$remote, (git_strarray const*)$refspecs, (git_push_options const*)$opts);
			]"
		end

	c_git_remote_stats (remote: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_stats ((git_remote*)$remote);
			]"
		end

	c_git_remote_autotag (remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_autotag ((git_remote const*)$remote);
			]"
		end

	c_git_remote_set_autotag (repo: POINTER; remote: POINTER; value: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_set_autotag ((git_repository*)$repo, (char const*)$remote, (git_remote_autotag_option_t)$value);
			]"
		end

	c_git_remote_prune_refs (remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_prune_refs ((git_remote const*)$remote);
			]"
		end

	c_git_remote_rename (problems: POINTER; repo: POINTER; name: POINTER; new_name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_rename ((git_strarray*)$problems, (git_repository*)$repo, (char const*)$name, (char const*)$new_name);
			]"
		end

	c_git_remote_delete (repo: POINTER; name: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_delete ((git_repository*)$repo, (char const*)$name);
			]"
		end

	c_git_remote_default_branch (a_out: POINTER; remote: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_default_branch ((git_buf*)$a_out, (git_remote*)$remote);
			]"
		end

	c_git_push_init_options (opts: POINTER; version: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_push_init_options ((git_push_options*)$opts, (unsigned int)$version);
			]"
		end

	c_git_remote_create_init_options (opts: POINTER; version: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_remote_create_init_options ((git_remote_create_options*)$opts, (unsigned int)$version);
			]"
		end

feature -- Externals Address

end
