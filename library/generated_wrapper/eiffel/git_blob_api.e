note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_BLOB_API


feature -- Access

	git_blob_lookup (blob: GIT_BLOB_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_blob_lookup (blob.item, repo.item, id.item)
		ensure
			instance_free: class
		end

	git_blob_lookup_prefix (blob: GIT_BLOB_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API; len: INTEGER): INTEGER 
		do
			Result := c_git_blob_lookup_prefix (blob.item, repo.item, id.item, len)
		ensure
			instance_free: class
		end

	git_blob_free (blob: GIT_BLOB_STRUCT_API) 
		do
			c_git_blob_free (blob.item)
		ensure
			instance_free: class
		end

	git_blob_id (blob: GIT_BLOB_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_blob_id (blob.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_blob_owner (blob: GIT_BLOB_STRUCT_API): detachable GIT_REPOSITORY_STRUCT_API 
		do
			if attached c_git_blob_owner (blob.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_blob_rawcontent (blob: GIT_BLOB_STRUCT_API): POINTER 
		do
			Result := c_git_blob_rawcontent (blob.item)
		ensure
			instance_free: class
		end

	git_blob_rawsize (blob: GIT_BLOB_STRUCT_API): INTEGER 
		do
			Result := c_git_blob_rawsize (blob.item)
		ensure
			instance_free: class
		end

	git_blob_filter (a_out: GIT_BUF_STRUCT_API; blob: GIT_BLOB_STRUCT_API; as_path: STRING; opts: GIT_BLOB_FILTER_OPTIONS_STRUCT_API): INTEGER 
		local
			as_path_c_string: C_STRING
		do
			create as_path_c_string.make (as_path)
			Result := c_git_blob_filter (a_out.item, blob.item, as_path_c_string.item, opts.item)
		ensure
			instance_free: class
		end

	git_blob_create_from_workdir (id: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; relative_path: STRING): INTEGER 
		local
			relative_path_c_string: C_STRING
		do
			create relative_path_c_string.make (relative_path)
			Result := c_git_blob_create_from_workdir (id.item, repo.item, relative_path_c_string.item)
		ensure
			instance_free: class
		end

	git_blob_create_from_disk (id: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; path: STRING): INTEGER 
		local
			path_c_string: C_STRING
		do
			create path_c_string.make (path)
			Result := c_git_blob_create_from_disk (id.item, repo.item, path_c_string.item)
		ensure
			instance_free: class
		end

	git_blob_create_from_stream (a_out: GIT_WRITESTREAM_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; hintpath: STRING): INTEGER 
		local
			hintpath_c_string: C_STRING
		do
			create hintpath_c_string.make (hintpath)
			Result := c_git_blob_create_from_stream (a_out.item, repo.item, hintpath_c_string.item)
		ensure
			instance_free: class
		end

	git_blob_create_from_stream_commit (a_out: GIT_OID_STRUCT_API; stream: GIT_WRITESTREAM_STRUCT_API): INTEGER 
		do
			Result := c_git_blob_create_from_stream_commit (a_out.item, stream.item)
		ensure
			instance_free: class
		end

	git_blob_create_from_buffer (id: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; buffer: POINTER; len: INTEGER): INTEGER 
		do
			Result := c_git_blob_create_from_buffer (id.item, repo.item, buffer, len)
		ensure
			instance_free: class
		end

	git_blob_is_binary (blob: GIT_BLOB_STRUCT_API): INTEGER 
		do
			Result := c_git_blob_is_binary (blob.item)
		ensure
			instance_free: class
		end

	git_blob_dup (a_out: GIT_BLOB_STRUCT_API; source: GIT_BLOB_STRUCT_API): INTEGER 
		do
			Result := c_git_blob_dup (a_out.item, source.item)
		ensure
			instance_free: class
		end

	git_blob_create_fromworkdir (id: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; relative_path: STRING): INTEGER 
		local
			relative_path_c_string: C_STRING
		do
			create relative_path_c_string.make (relative_path)
			Result := c_git_blob_create_fromworkdir (id.item, repo.item, relative_path_c_string.item)
		ensure
			instance_free: class
		end

	git_blob_create_fromdisk (id: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; path: STRING): INTEGER 
		local
			path_c_string: C_STRING
		do
			create path_c_string.make (path)
			Result := c_git_blob_create_fromdisk (id.item, repo.item, path_c_string.item)
		ensure
			instance_free: class
		end

	git_blob_create_fromstream (a_out: GIT_WRITESTREAM_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; hintpath: STRING): INTEGER 
		local
			hintpath_c_string: C_STRING
		do
			create hintpath_c_string.make (hintpath)
			Result := c_git_blob_create_fromstream (a_out.item, repo.item, hintpath_c_string.item)
		ensure
			instance_free: class
		end

	git_blob_create_fromstream_commit (a_out: GIT_OID_STRUCT_API; stream: GIT_WRITESTREAM_STRUCT_API): INTEGER 
		do
			Result := c_git_blob_create_fromstream_commit (a_out.item, stream.item)
		ensure
			instance_free: class
		end

	git_blob_create_frombuffer (id: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; buffer: POINTER; len: INTEGER): INTEGER 
		do
			Result := c_git_blob_create_frombuffer (id.item, repo.item, buffer, len)
		ensure
			instance_free: class
		end

	git_blob_filtered_content (a_out: GIT_BUF_STRUCT_API; blob: GIT_BLOB_STRUCT_API; as_path: STRING; check_for_binary_data: INTEGER): INTEGER 
		local
			as_path_c_string: C_STRING
		do
			create as_path_c_string.make (as_path)
			Result := c_git_blob_filtered_content (a_out.item, blob.item, as_path_c_string.item, check_for_binary_data)
		ensure
			instance_free: class
		end

feature -- Externals

	c_git_blob_lookup (blob: POINTER; repo: POINTER; id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_lookup ((git_blob**)$blob, (git_repository*)$repo, (git_oid const*)$id);
			]"
		end

	c_git_blob_lookup_prefix (blob: POINTER; repo: POINTER; id: POINTER; len: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_lookup_prefix ((git_blob**)$blob, (git_repository*)$repo, (git_oid const*)$id, (size_t)$len);
			]"
		end

	c_git_blob_free (blob: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_blob_free ((git_blob*)$blob);
			]"
		end

	c_git_blob_id (blob: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_id ((git_blob const*)$blob);
			]"
		end

	c_git_blob_owner (blob: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_owner ((git_blob const*)$blob);
			]"
		end

	c_git_blob_rawcontent (blob: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_rawcontent ((git_blob const*)$blob);
			]"
		end

	c_git_blob_rawsize (blob: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_rawsize ((git_blob const*)$blob);
			]"
		end

	c_git_blob_filter (a_out: POINTER; blob: POINTER; as_path: POINTER; opts: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_filter ((git_buf*)$a_out, (git_blob*)$blob, (char const*)$as_path, (git_blob_filter_options*)$opts);
			]"
		end

	c_git_blob_create_from_workdir (id: POINTER; repo: POINTER; relative_path: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_from_workdir ((git_oid*)$id, (git_repository*)$repo, (char const*)$relative_path);
			]"
		end

	c_git_blob_create_from_disk (id: POINTER; repo: POINTER; path: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_from_disk ((git_oid*)$id, (git_repository*)$repo, (char const*)$path);
			]"
		end

	c_git_blob_create_from_stream (a_out: POINTER; repo: POINTER; hintpath: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_from_stream ((git_writestream**)$a_out, (git_repository*)$repo, (char const*)$hintpath);
			]"
		end

	c_git_blob_create_from_stream_commit (a_out: POINTER; stream: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_from_stream_commit ((git_oid*)$a_out, (git_writestream*)$stream);
			]"
		end

	c_git_blob_create_from_buffer (id: POINTER; repo: POINTER; buffer: POINTER; len: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_from_buffer ((git_oid*)$id, (git_repository*)$repo, (void const*)$buffer, (size_t)$len);
			]"
		end

	c_git_blob_is_binary (blob: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_is_binary ((git_blob const*)$blob);
			]"
		end

	c_git_blob_dup (a_out: POINTER; source: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_dup ((git_blob**)$a_out, (git_blob*)$source);
			]"
		end

	c_git_blob_create_fromworkdir (id: POINTER; repo: POINTER; relative_path: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_fromworkdir ((git_oid*)$id, (git_repository*)$repo, (char const*)$relative_path);
			]"
		end

	c_git_blob_create_fromdisk (id: POINTER; repo: POINTER; path: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_fromdisk ((git_oid*)$id, (git_repository*)$repo, (char const*)$path);
			]"
		end

	c_git_blob_create_fromstream (a_out: POINTER; repo: POINTER; hintpath: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_fromstream ((git_writestream**)$a_out, (git_repository*)$repo, (char const*)$hintpath);
			]"
		end

	c_git_blob_create_fromstream_commit (a_out: POINTER; stream: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_fromstream_commit ((git_oid*)$a_out, (git_writestream*)$stream);
			]"
		end

	c_git_blob_create_frombuffer (id: POINTER; repo: POINTER; buffer: POINTER; len: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_create_frombuffer ((git_oid*)$id, (git_repository*)$repo, (void const*)$buffer, (size_t)$len);
			]"
		end

	c_git_blob_filtered_content (a_out: POINTER; blob: POINTER; as_path: POINTER; check_for_binary_data: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_blob_filtered_content ((git_buf*)$a_out, (git_blob*)$blob, (char const*)$as_path, (int)$check_for_binary_data);
			]"
		end

feature -- Externals Address

end
