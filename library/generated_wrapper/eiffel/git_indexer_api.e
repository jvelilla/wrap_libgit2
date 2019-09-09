note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_INDEXER_API


feature -- Access

	git_indexer_init_options (opts: GIT_INDEXER_OPTIONS_STRUCT_API; version: INTEGER): INTEGER 
		do
			Result := c_git_indexer_init_options (opts.item, version)
		end

	git_indexer_new (a_out: GIT_INDEXER_STRUCT_API; path: STRING; mode: INTEGER; odb: GIT_ODB_STRUCT_API; opts: GIT_INDEXER_OPTIONS_STRUCT_API): INTEGER 
		local
			path_c_string: C_STRING
		do
			create path_c_string.make (path)
			Result := c_git_indexer_new (a_out.item, path_c_string.item, mode, odb.item, opts.item)
		end

	git_indexer_append (idx: GIT_INDEXER_STRUCT_API; data: POINTER; size: INTEGER; stats: GIT_TRANSFER_PROGRESS_STRUCT_API): INTEGER 
		do
			Result := c_git_indexer_append (idx.item, data, size, stats.item)
		end

	git_indexer_commit (idx: GIT_INDEXER_STRUCT_API; stats: GIT_TRANSFER_PROGRESS_STRUCT_API): INTEGER 
		do
			Result := c_git_indexer_commit (idx.item, stats.item)
		end

	git_indexer_hash (idx: GIT_INDEXER_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_indexer_hash (idx.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_indexer_free (idx: GIT_INDEXER_STRUCT_API) 
		do
			c_git_indexer_free (idx.item)
		end

feature -- Externals

	c_git_indexer_init_options (opts: POINTER; version: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_indexer_init_options ((git_indexer_options*)$opts, (unsigned int)$version);
			]"
		end

	c_git_indexer_new (a_out: POINTER; path: POINTER; mode: INTEGER; odb: POINTER; opts: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_indexer_new ((git_indexer**)$a_out, (char const*)$path, (unsigned int)$mode, (git_odb*)$odb, (git_indexer_options*)$opts);
			]"
		end

	c_git_indexer_append (idx: POINTER; data: POINTER; size: INTEGER; stats: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_indexer_append ((git_indexer*)$idx, (void const*)$data, (size_t)$size, (git_transfer_progress*)$stats);
			]"
		end

	c_git_indexer_commit (idx: POINTER; stats: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_indexer_commit ((git_indexer*)$idx, (git_transfer_progress*)$stats);
			]"
		end

	c_git_indexer_hash (idx: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_indexer_hash ((git_indexer const*)$idx);
			]"
		end

	c_git_indexer_free (idx: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_indexer_free ((git_indexer*)$idx);
			]"
		end

feature -- Externals Address

end