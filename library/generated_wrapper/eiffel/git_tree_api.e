note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_TREE_API


feature -- Access

	git_tree_lookup (a_out: GIT_TREE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_lookup (a_out.item, repo.item, id.item)
		end

	git_tree_lookup_prefix (a_out: GIT_TREE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API; len: INTEGER): INTEGER 
		do
			Result := c_git_tree_lookup_prefix (a_out.item, repo.item, id.item, len)
		end

	git_tree_free (tree: GIT_TREE_STRUCT_API) 
		do
			c_git_tree_free (tree.item)
		end

	git_tree_id (tree: GIT_TREE_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_tree_id (tree.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_tree_owner (tree: GIT_TREE_STRUCT_API): detachable GIT_REPOSITORY_STRUCT_API 
		do
			if attached c_git_tree_owner (tree.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_tree_entrycount (tree: GIT_TREE_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_entrycount (tree.item)
		end

	git_tree_entry_byname (tree: GIT_TREE_STRUCT_API; filename: STRING): detachable GIT_TREE_ENTRY_STRUCT_API 
		local
			filename_c_string: C_STRING
		do
			create filename_c_string.make (filename)
			if attached c_git_tree_entry_byname (tree.item, filename_c_string.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_tree_entry_byindex (tree: GIT_TREE_STRUCT_API; idx: INTEGER): detachable GIT_TREE_ENTRY_STRUCT_API 
		do
			if attached c_git_tree_entry_byindex (tree.item, idx) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_tree_entry_byid (tree: GIT_TREE_STRUCT_API; id: GIT_OID_STRUCT_API): detachable GIT_TREE_ENTRY_STRUCT_API 
		do
			if attached c_git_tree_entry_byid (tree.item, id.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_tree_entry_bypath (a_out: GIT_TREE_ENTRY_STRUCT_API; root: GIT_TREE_STRUCT_API; path: STRING): INTEGER 
		local
			path_c_string: C_STRING
		do
			create path_c_string.make (path)
			Result := c_git_tree_entry_bypath (a_out.item, root.item, path_c_string.item)
		end

	git_tree_entry_dup (dest: GIT_TREE_ENTRY_STRUCT_API; source: GIT_TREE_ENTRY_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_entry_dup (dest.item, source.item)
		end

	git_tree_entry_free (entry: GIT_TREE_ENTRY_STRUCT_API) 
		do
			c_git_tree_entry_free (entry.item)
		end

	git_tree_entry_name (entry: GIT_TREE_ENTRY_STRUCT_API): POINTER 
		do
			Result := c_git_tree_entry_name (entry.item)
		end

	git_tree_entry_id (entry: GIT_TREE_ENTRY_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_tree_entry_id (entry.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	git_tree_entry_type (entry: GIT_TREE_ENTRY_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_entry_type (entry.item)
		end

	git_tree_entry_filemode (entry: GIT_TREE_ENTRY_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_entry_filemode (entry.item)
		end

	git_tree_entry_filemode_raw (entry: GIT_TREE_ENTRY_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_entry_filemode_raw (entry.item)
		end

	git_tree_entry_cmp (e1: GIT_TREE_ENTRY_STRUCT_API; e2: GIT_TREE_ENTRY_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_entry_cmp (e1.item, e2.item)
		end

	git_tree_entry_to_object (object_out: GIT_OBJECT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; entry: GIT_TREE_ENTRY_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_entry_to_object (object_out.item, repo.item, entry.item)
		end

	git_tree_walk (tree: GIT_TREE_STRUCT_API; mode: INTEGER; callback: POINTER; payload: POINTER): INTEGER 
		do
			Result := c_git_tree_walk (tree.item, mode, callback, payload)
		end

	git_tree_dup (a_out: GIT_TREE_STRUCT_API; source: GIT_TREE_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_dup (a_out.item, source.item)
		end

	git_tree_create_updated (a_out: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; baseline: GIT_TREE_STRUCT_API; nupdates: INTEGER; updates: GIT_TREE_UPDATE_STRUCT_API): INTEGER 
		do
			Result := c_git_tree_create_updated (a_out.item, repo.item, baseline.item, nupdates, updates.item)
		end

feature -- Externals

	c_git_tree_lookup (a_out: POINTER; repo: POINTER; id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_lookup ((git_tree**)$a_out, (git_repository*)$repo, (git_oid const*)$id);
			]"
		end

	c_git_tree_lookup_prefix (a_out: POINTER; repo: POINTER; id: POINTER; len: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_lookup_prefix ((git_tree**)$a_out, (git_repository*)$repo, (git_oid const*)$id, (size_t)$len);
			]"
		end

	c_git_tree_free (tree: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_tree_free ((git_tree*)$tree);
			]"
		end

	c_git_tree_id (tree: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_id ((git_tree const*)$tree);
			]"
		end

	c_git_tree_owner (tree: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_owner ((git_tree const*)$tree);
			]"
		end

	c_git_tree_entrycount (tree: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entrycount ((git_tree const*)$tree);
			]"
		end

	c_git_tree_entry_byname (tree: POINTER; filename: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_byname ((git_tree const*)$tree, (char const*)$filename);
			]"
		end

	c_git_tree_entry_byindex (tree: POINTER; idx: INTEGER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_byindex ((git_tree const*)$tree, (size_t)$idx);
			]"
		end

	c_git_tree_entry_byid (tree: POINTER; id: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_byid ((git_tree const*)$tree, (git_oid const*)$id);
			]"
		end

	c_git_tree_entry_bypath (a_out: POINTER; root: POINTER; path: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_bypath ((git_tree_entry**)$a_out, (git_tree const*)$root, (char const*)$path);
			]"
		end

	c_git_tree_entry_dup (dest: POINTER; source: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_dup ((git_tree_entry**)$dest, (git_tree_entry const*)$source);
			]"
		end

	c_git_tree_entry_free (entry: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_tree_entry_free ((git_tree_entry*)$entry);
			]"
		end

	c_git_tree_entry_name (entry: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_name ((git_tree_entry const*)$entry);
			]"
		end

	c_git_tree_entry_id (entry: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_id ((git_tree_entry const*)$entry);
			]"
		end

	c_git_tree_entry_type (entry: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_type ((git_tree_entry const*)$entry);
			]"
		end

	c_git_tree_entry_filemode (entry: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_filemode ((git_tree_entry const*)$entry);
			]"
		end

	c_git_tree_entry_filemode_raw (entry: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_filemode_raw ((git_tree_entry const*)$entry);
			]"
		end

	c_git_tree_entry_cmp (e1: POINTER; e2: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_cmp ((git_tree_entry const*)$e1, (git_tree_entry const*)$e2);
			]"
		end

	c_git_tree_entry_to_object (object_out: POINTER; repo: POINTER; entry: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_entry_to_object ((git_object**)$object_out, (git_repository*)$repo, (git_tree_entry const*)$entry);
			]"
		end

	c_git_tree_walk (tree: POINTER; mode: INTEGER; callback: POINTER; payload: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_walk ((git_tree const*)$tree, (git_treewalk_mode)$mode, (git_treewalk_cb)$callback, (void*)$payload);
			]"
		end

	c_git_tree_dup (a_out: POINTER; source: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_dup ((git_tree**)$a_out, (git_tree*)$source);
			]"
		end

	c_git_tree_create_updated (a_out: POINTER; repo: POINTER; baseline: POINTER; nupdates: INTEGER; updates: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_tree_create_updated ((git_oid*)$a_out, (git_repository*)$repo, (git_tree*)$baseline, (size_t)$nupdates, (git_tree_update const*)$updates);
			]"
		end

feature -- Externals Address

end