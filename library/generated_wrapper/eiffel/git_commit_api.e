note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_COMMIT_API


feature -- Access

	git_commit_lookup (commit: GIT_COMMIT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_commit_lookup (commit.item, repo.item, id.item)
		ensure
			instance_free: class
		end

	git_commit_lookup_prefix (commit: GIT_COMMIT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; id: GIT_OID_STRUCT_API; len: INTEGER): INTEGER 
		do
			Result := c_git_commit_lookup_prefix (commit.item, repo.item, id.item, len)
		ensure
			instance_free: class
		end

	git_commit_free (commit: GIT_COMMIT_STRUCT_API) 
		do
			c_git_commit_free (commit.item)
		ensure
			instance_free: class
		end

	git_commit_id (commit: GIT_COMMIT_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_commit_id (commit.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_commit_owner (commit: GIT_COMMIT_STRUCT_API): detachable GIT_REPOSITORY_STRUCT_API 
		do
			if attached c_git_commit_owner (commit.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_commit_message_encoding (commit: GIT_COMMIT_STRUCT_API): POINTER 
		do
			Result := c_git_commit_message_encoding (commit.item)
		ensure
			instance_free: class
		end

	git_commit_message (commit: GIT_COMMIT_STRUCT_API): POINTER 
		do
			Result := c_git_commit_message (commit.item)
		ensure
			instance_free: class
		end

	git_commit_message_raw (commit: GIT_COMMIT_STRUCT_API): POINTER 
		do
			Result := c_git_commit_message_raw (commit.item)
		ensure
			instance_free: class
		end

	git_commit_summary (commit: GIT_COMMIT_STRUCT_API): POINTER 
		do
			Result := c_git_commit_summary (commit.item)
		ensure
			instance_free: class
		end

	git_commit_body (commit: GIT_COMMIT_STRUCT_API): POINTER 
		do
			Result := c_git_commit_body (commit.item)
		ensure
			instance_free: class
		end

	git_commit_time (commit: GIT_COMMIT_STRUCT_API): INTEGER 
		do
			Result := c_git_commit_time (commit.item)
		ensure
			instance_free: class
		end

	git_commit_time_offset (commit: GIT_COMMIT_STRUCT_API): INTEGER 
		do
			Result := c_git_commit_time_offset (commit.item)
		ensure
			instance_free: class
		end

	git_commit_committer (commit: GIT_COMMIT_STRUCT_API): detachable GIT_SIGNATURE_STRUCT_API 
		do
			if attached c_git_commit_committer (commit.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_commit_author (commit: GIT_COMMIT_STRUCT_API): detachable GIT_SIGNATURE_STRUCT_API 
		do
			if attached c_git_commit_author (commit.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_commit_committer_with_mailmap (a_out: GIT_SIGNATURE_STRUCT_API; commit: GIT_COMMIT_STRUCT_API; mailmap: GIT_MAILMAP_STRUCT_API): INTEGER 
		do
			Result := c_git_commit_committer_with_mailmap (a_out.item, commit.item, mailmap.item)
		ensure
			instance_free: class
		end

	git_commit_author_with_mailmap (a_out: GIT_SIGNATURE_STRUCT_API; commit: GIT_COMMIT_STRUCT_API; mailmap: GIT_MAILMAP_STRUCT_API): INTEGER 
		do
			Result := c_git_commit_author_with_mailmap (a_out.item, commit.item, mailmap.item)
		ensure
			instance_free: class
		end

	git_commit_raw_header (commit: GIT_COMMIT_STRUCT_API): POINTER 
		do
			Result := c_git_commit_raw_header (commit.item)
		ensure
			instance_free: class
		end

	git_commit_tree (tree_out: GIT_TREE_STRUCT_API; commit: GIT_COMMIT_STRUCT_API): INTEGER 
		do
			Result := c_git_commit_tree (tree_out.item, commit.item)
		ensure
			instance_free: class
		end

	git_commit_tree_id (commit: GIT_COMMIT_STRUCT_API): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_commit_tree_id (commit.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_commit_parentcount (commit: GIT_COMMIT_STRUCT_API): INTEGER 
		do
			Result := c_git_commit_parentcount (commit.item)
		ensure
			instance_free: class
		end

	git_commit_parent (a_out: GIT_COMMIT_STRUCT_API; commit: GIT_COMMIT_STRUCT_API; n: INTEGER): INTEGER 
		do
			Result := c_git_commit_parent (a_out.item, commit.item, n)
		ensure
			instance_free: class
		end

	git_commit_parent_id (commit: GIT_COMMIT_STRUCT_API; n: INTEGER): detachable GIT_OID_STRUCT_API 
		do
			if attached c_git_commit_parent_id (commit.item, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	git_commit_nth_gen_ancestor (ancestor: GIT_COMMIT_STRUCT_API; commit: GIT_COMMIT_STRUCT_API; n: INTEGER): INTEGER 
		do
			Result := c_git_commit_nth_gen_ancestor (ancestor.item, commit.item, n)
		ensure
			instance_free: class
		end

	git_commit_header_field (a_out: GIT_BUF_STRUCT_API; commit: GIT_COMMIT_STRUCT_API; field: STRING): INTEGER 
		local
			field_c_string: C_STRING
		do
			create field_c_string.make (field)
			Result := c_git_commit_header_field (a_out.item, commit.item, field_c_string.item)
		ensure
			instance_free: class
		end

	git_commit_extract_signature (signature: GIT_BUF_STRUCT_API; signed_data: GIT_BUF_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; commit_id: GIT_OID_STRUCT_API; field: STRING): INTEGER 
		local
			field_c_string: C_STRING
		do
			create field_c_string.make (field)
			Result := c_git_commit_extract_signature (signature.item, signed_data.item, repo.item, commit_id.item, field_c_string.item)
		ensure
			instance_free: class
		end

	git_commit_create (id: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; update_ref: STRING; author: GIT_SIGNATURE_STRUCT_API; committer: GIT_SIGNATURE_STRUCT_API; message_encoding: STRING; message: STRING; tree: GIT_TREE_STRUCT_API; parent_count: INTEGER; parents: POINTER): INTEGER 
		local
			update_ref_c_string: C_STRING
			message_encoding_c_string: C_STRING
			message_c_string: C_STRING
		do
			create update_ref_c_string.make (update_ref)
			create message_encoding_c_string.make (message_encoding)
			create message_c_string.make (message)
			Result := c_git_commit_create (id.item, repo.item, update_ref_c_string.item, author.item, committer.item, message_encoding_c_string.item, message_c_string.item, tree.item, parent_count, parents)
		ensure
			instance_free: class
		end

	git_commit_create_v (id: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; update_ref: STRING; author: GIT_SIGNATURE_STRUCT_API; committer: GIT_SIGNATURE_STRUCT_API; message_encoding: STRING; message: STRING; tree: GIT_TREE_STRUCT_API; parent_count: INTEGER): INTEGER 
		local
			update_ref_c_string: C_STRING
			message_encoding_c_string: C_STRING
			message_c_string: C_STRING
		do
			create update_ref_c_string.make (update_ref)
			create message_encoding_c_string.make (message_encoding)
			create message_c_string.make (message)
			Result := c_git_commit_create_v (id.item, repo.item, update_ref_c_string.item, author.item, committer.item, message_encoding_c_string.item, message_c_string.item, tree.item, parent_count)
		ensure
			instance_free: class
		end

	git_commit_amend (id: GIT_OID_STRUCT_API; commit_to_amend: GIT_COMMIT_STRUCT_API; update_ref: STRING; author: GIT_SIGNATURE_STRUCT_API; committer: GIT_SIGNATURE_STRUCT_API; message_encoding: STRING; message: STRING; tree: GIT_TREE_STRUCT_API): INTEGER 
		local
			update_ref_c_string: C_STRING
			message_encoding_c_string: C_STRING
			message_c_string: C_STRING
		do
			create update_ref_c_string.make (update_ref)
			create message_encoding_c_string.make (message_encoding)
			create message_c_string.make (message)
			Result := c_git_commit_amend (id.item, commit_to_amend.item, update_ref_c_string.item, author.item, committer.item, message_encoding_c_string.item, message_c_string.item, tree.item)
		ensure
			instance_free: class
		end

	git_commit_create_buffer (a_out: GIT_BUF_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; author: GIT_SIGNATURE_STRUCT_API; committer: GIT_SIGNATURE_STRUCT_API; message_encoding: STRING; message: STRING; tree: GIT_TREE_STRUCT_API; parent_count: INTEGER; parents: POINTER): INTEGER 
		local
			message_encoding_c_string: C_STRING
			message_c_string: C_STRING
		do
			create message_encoding_c_string.make (message_encoding)
			create message_c_string.make (message)
			Result := c_git_commit_create_buffer (a_out.item, repo.item, author.item, committer.item, message_encoding_c_string.item, message_c_string.item, tree.item, parent_count, parents)
		ensure
			instance_free: class
		end

	git_commit_create_with_signature (a_out: GIT_OID_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; commit_content: STRING; signature: STRING; signature_field: STRING): INTEGER 
		local
			commit_content_c_string: C_STRING
			signature_c_string: C_STRING
			signature_field_c_string: C_STRING
		do
			create commit_content_c_string.make (commit_content)
			create signature_c_string.make (signature)
			create signature_field_c_string.make (signature_field)
			Result := c_git_commit_create_with_signature (a_out.item, repo.item, commit_content_c_string.item, signature_c_string.item, signature_field_c_string.item)
		ensure
			instance_free: class
		end

	git_commit_dup (a_out: GIT_COMMIT_STRUCT_API; source: GIT_COMMIT_STRUCT_API): INTEGER 
		do
			Result := c_git_commit_dup (a_out.item, source.item)
		ensure
			instance_free: class
		end

feature -- Externals

	c_git_commit_lookup (commit: POINTER; repo: POINTER; id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_lookup ((git_commit**)$commit, (git_repository*)$repo, (git_oid const*)$id);
			]"
		end

	c_git_commit_lookup_prefix (commit: POINTER; repo: POINTER; id: POINTER; len: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_lookup_prefix ((git_commit**)$commit, (git_repository*)$repo, (git_oid const*)$id, (size_t)$len);
			]"
		end

	c_git_commit_free (commit: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_commit_free ((git_commit*)$commit);
			]"
		end

	c_git_commit_id (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_id ((git_commit const*)$commit);
			]"
		end

	c_git_commit_owner (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_owner ((git_commit const*)$commit);
			]"
		end

	c_git_commit_message_encoding (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_message_encoding ((git_commit const*)$commit);
			]"
		end

	c_git_commit_message (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_message ((git_commit const*)$commit);
			]"
		end

	c_git_commit_message_raw (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_message_raw ((git_commit const*)$commit);
			]"
		end

	c_git_commit_summary (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_summary ((git_commit*)$commit);
			]"
		end

	c_git_commit_body (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_body ((git_commit*)$commit);
			]"
		end

	c_git_commit_time (commit: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_time ((git_commit const*)$commit);
			]"
		end

	c_git_commit_time_offset (commit: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_time_offset ((git_commit const*)$commit);
			]"
		end

	c_git_commit_committer (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_committer ((git_commit const*)$commit);
			]"
		end

	c_git_commit_author (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_author ((git_commit const*)$commit);
			]"
		end

	c_git_commit_committer_with_mailmap (a_out: POINTER; commit: POINTER; mailmap: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_committer_with_mailmap ((git_signature**)$a_out, (git_commit const*)$commit, (git_mailmap const*)$mailmap);
			]"
		end

	c_git_commit_author_with_mailmap (a_out: POINTER; commit: POINTER; mailmap: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_author_with_mailmap ((git_signature**)$a_out, (git_commit const*)$commit, (git_mailmap const*)$mailmap);
			]"
		end

	c_git_commit_raw_header (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_raw_header ((git_commit const*)$commit);
			]"
		end

	c_git_commit_tree (tree_out: POINTER; commit: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_tree ((git_tree**)$tree_out, (git_commit const*)$commit);
			]"
		end

	c_git_commit_tree_id (commit: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_tree_id ((git_commit const*)$commit);
			]"
		end

	c_git_commit_parentcount (commit: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_parentcount ((git_commit const*)$commit);
			]"
		end

	c_git_commit_parent (a_out: POINTER; commit: POINTER; n: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_parent ((git_commit**)$a_out, (git_commit const*)$commit, (unsigned int)$n);
			]"
		end

	c_git_commit_parent_id (commit: POINTER; n: INTEGER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_parent_id ((git_commit const*)$commit, (unsigned int)$n);
			]"
		end

	c_git_commit_nth_gen_ancestor (ancestor: POINTER; commit: POINTER; n: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_nth_gen_ancestor ((git_commit**)$ancestor, (git_commit const*)$commit, (unsigned int)$n);
			]"
		end

	c_git_commit_header_field (a_out: POINTER; commit: POINTER; field: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_header_field ((git_buf*)$a_out, (git_commit const*)$commit, (char const*)$field);
			]"
		end

	c_git_commit_extract_signature (signature: POINTER; signed_data: POINTER; repo: POINTER; commit_id: POINTER; field: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_extract_signature ((git_buf*)$signature, (git_buf*)$signed_data, (git_repository*)$repo, (git_oid*)$commit_id, (char const*)$field);
			]"
		end

	c_git_commit_create (id: POINTER; repo: POINTER; update_ref: POINTER; author: POINTER; committer: POINTER; message_encoding: POINTER; message: POINTER; tree: POINTER; parent_count: INTEGER; parents: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_create ((git_oid*)$id, (git_repository*)$repo, (char const*)$update_ref, (git_signature const*)$author, (git_signature const*)$committer, (char const*)$message_encoding, (char const*)$message, (git_tree const*)$tree, (size_t)$parent_count, $parents);
			]"
		end

	c_git_commit_create_v (id: POINTER; repo: POINTER; update_ref: POINTER; author: POINTER; committer: POINTER; message_encoding: POINTER; message: POINTER; tree: POINTER; parent_count: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_create_v ((git_oid*)$id, (git_repository*)$repo, (char const*)$update_ref, (git_signature const*)$author, (git_signature const*)$committer, (char const*)$message_encoding, (char const*)$message, (git_tree const*)$tree, (size_t)$parent_count);
			]"
		end

	c_git_commit_amend (id: POINTER; commit_to_amend: POINTER; update_ref: POINTER; author: POINTER; committer: POINTER; message_encoding: POINTER; message: POINTER; tree: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_amend ((git_oid*)$id, (git_commit const*)$commit_to_amend, (char const*)$update_ref, (git_signature const*)$author, (git_signature const*)$committer, (char const*)$message_encoding, (char const*)$message, (git_tree const*)$tree);
			]"
		end

	c_git_commit_create_buffer (a_out: POINTER; repo: POINTER; author: POINTER; committer: POINTER; message_encoding: POINTER; message: POINTER; tree: POINTER; parent_count: INTEGER; parents: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_create_buffer ((git_buf*)$a_out, (git_repository*)$repo, (git_signature const*)$author, (git_signature const*)$committer, (char const*)$message_encoding, (char const*)$message, (git_tree const*)$tree, (size_t)$parent_count, $parents);
			]"
		end

	c_git_commit_create_with_signature (a_out: POINTER; repo: POINTER; commit_content: POINTER; signature: POINTER; signature_field: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_create_with_signature ((git_oid*)$a_out, (git_repository*)$repo, (char const*)$commit_content, (char const*)$signature, (char const*)$signature_field);
			]"
		end

	c_git_commit_dup (a_out: POINTER; source: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_commit_dup ((git_commit**)$a_out, (git_commit*)$source);
			]"
		end

feature -- Externals Address

end
