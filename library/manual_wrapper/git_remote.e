note
	description: "Summary description for {GIT_REMOTE}."
	date: "$Date$"
	revision: "$Revision$"

class
	GIT_REMOTE

inherit

	GIT_REMOTE_API
		rename
			git_remote_lookup as git_remote_lookup_api,
			git_remote_connect as git_remote_connect_api
		end


feature -- Access

	git_remote_lookup (a_out: GIT_REMOTE_STRUCT_API; repo: GIT_REPOSITORY_STRUCT_API; name: STRING): INTEGER
		local
			name_c_string: C_STRING
			l_ptr: POINTER
		do
			create name_c_string.make (name)
			Result := c_git_remote_lookup ($l_ptr, repo.item, name_c_string.item)
			if l_ptr /= default_pointer then
				a_out.make_by_pointer (l_ptr)
			end
		end

	git_remote_connect (remote: GIT_REMOTE_STRUCT_API; direction: INTEGER; callbacks: detachable GIT_REMOTE_CALLBACKS_STRUCT_API; proxy_opts: detachable GIT_PROXY_OPTIONS_STRUCT_API; custom_headers: detachable GIT_STRARRAY_STRUCT_API): INTEGER
		local
			l_callbacks: POINTER
			l_proxy_opts: POINTER
			l_custom_header: POINTER
		do
			if attached callbacks then
				l_callbacks := callbacks.item
			end
			if attached proxy_opts then
				l_proxy_opts := proxy_opts.item
			end
			if attached custom_headers then
				l_custom_header := custom_headers.item
			end
			Result := c_git_remote_connect (remote.item, direction, l_callbacks, l_proxy_opts, l_custom_header)
		end


end