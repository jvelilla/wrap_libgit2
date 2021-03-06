note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_REVPARSE_API


feature -- Access

	git_revparse_single (a_out: GIT_OBJECT_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; spec: STRING_8): INTEGER 
		local
			spec_c_string: C_STRING
		do
			create spec_c_string.make (spec)
			Result := c_git_revparse_single (a_out.item, repo.item, spec_c_string.item)
		ensure
			instance_free: class
		end

	git_revparse_ext (object_out: GIT_OBJECT_STRUCT_API; reference_out: GIT_REFERENCE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; spec: STRING_8): INTEGER 
		local
			spec_c_string: C_STRING
		do
			create spec_c_string.make (spec)
			Result := c_git_revparse_ext (object_out.item, reference_out.item, repo.item, spec_c_string.item)
		ensure
			instance_free: class
		end

feature -- Externals

	c_git_revparse_single (a_out: POINTER; repo: POINTER; spec: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_revparse_single ((git_object**)$a_out, (git_repository*)$repo, (char const*)$spec);
			]"
		end

	c_git_revparse_ext (object_out: POINTER; reference_out: POINTER; repo: POINTER; spec: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_revparse_ext ((git_object**)$object_out, (git_reference**)$reference_out, (git_repository*)$repo, (char const*)$spec);
			]"
		end

feature -- Externals Address

end
