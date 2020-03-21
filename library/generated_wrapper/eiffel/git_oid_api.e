note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GIT_OID_API


feature -- Access

	git_oid_fromstr (a_out: GIT_OID_STRUCT_API; str: STRING): INTEGER 
		local
			str_c_string: C_STRING
		do
			create str_c_string.make (str)
			Result := c_git_oid_fromstr (a_out.item, str_c_string.item)
		end

	git_oid_fromstrp (a_out: GIT_OID_STRUCT_API; str: STRING): INTEGER 
		local
			str_c_string: C_STRING
		do
			create str_c_string.make (str)
			Result := c_git_oid_fromstrp (a_out.item, str_c_string.item)
		end

	git_oid_fromstrn (a_out: GIT_OID_STRUCT_API; str: STRING; length: INTEGER): INTEGER 
		local
			str_c_string: C_STRING
		do
			create str_c_string.make (str)
			Result := c_git_oid_fromstrn (a_out.item, str_c_string.item, length)
		end

	git_oid_fromraw (a_out: GIT_OID_STRUCT_API; raw: STRING): INTEGER 
		local
			raw_c_string: C_STRING
		do
			create raw_c_string.make (raw)
			Result := c_git_oid_fromraw (a_out.item, raw_c_string.item)
		end

	git_oid_fmt (a_out: STRING; id: GIT_OID_STRUCT_API): INTEGER 
		local
			a_out_c_string: C_STRING
		do
			create a_out_c_string.make (a_out)
			Result := c_git_oid_fmt (a_out_c_string.item, id.item)
		end

	git_oid_nfmt (a_out: STRING; n: INTEGER; id: GIT_OID_STRUCT_API): INTEGER 
		local
			a_out_c_string: C_STRING
		do
			create a_out_c_string.make (a_out)
			Result := c_git_oid_nfmt (a_out_c_string.item, n, id.item)
		end

	git_oid_pathfmt (a_out: STRING; id: GIT_OID_STRUCT_API): INTEGER 
		local
			a_out_c_string: C_STRING
		do
			create a_out_c_string.make (a_out)
			Result := c_git_oid_pathfmt (a_out_c_string.item, id.item)
		end

	git_oid_tostr_s (oid: GIT_OID_STRUCT_API): POINTER 
		do
			Result := c_git_oid_tostr_s (oid.item)
		end

	git_oid_tostr (a_out: STRING; n: INTEGER; id: GIT_OID_STRUCT_API): POINTER 
		local
			a_out_c_string: C_STRING
		do
			create a_out_c_string.make (a_out)
			Result := c_git_oid_tostr (a_out_c_string.item, n, id.item)
		end

	git_oid_cpy (a_out: GIT_OID_STRUCT_API; src: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_oid_cpy (a_out.item, src.item)
		end

	git_oid_cmp (a: GIT_OID_STRUCT_API; b: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_oid_cmp (a.item, b.item)
		end

	git_oid_equal (a: GIT_OID_STRUCT_API; b: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_oid_equal (a.item, b.item)
		end

	git_oid_ncmp (a: GIT_OID_STRUCT_API; b: GIT_OID_STRUCT_API; len: INTEGER): INTEGER 
		do
			Result := c_git_oid_ncmp (a.item, b.item, len)
		end

	git_oid_streq (id: GIT_OID_STRUCT_API; str: STRING): INTEGER 
		local
			str_c_string: C_STRING
		do
			create str_c_string.make (str)
			Result := c_git_oid_streq (id.item, str_c_string.item)
		end

	git_oid_strcmp (id: GIT_OID_STRUCT_API; str: STRING): INTEGER 
		local
			str_c_string: C_STRING
		do
			create str_c_string.make (str)
			Result := c_git_oid_strcmp (id.item, str_c_string.item)
		end

	git_oid_is_zero (id: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_oid_is_zero (id.item)
		end

	git_oid_shorten_new (min_length: INTEGER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_shorten_new ((size_t)$min_length);
			]"
		end

	git_oid_shorten_add (os: GIT_OID_SHORTEN_STRUCT_API; text_id: STRING): INTEGER 
		local
			text_id_c_string: C_STRING
		do
			create text_id_c_string.make (text_id)
			Result := c_git_oid_shorten_add (os.item, text_id_c_string.item)
		end

	git_oid_shorten_free (os: GIT_OID_SHORTEN_STRUCT_API) 
		do
			c_git_oid_shorten_free (os.item)
		end

	git_oid_iszero (id: GIT_OID_STRUCT_API): INTEGER 
		do
			Result := c_git_oid_iszero (id.item)
		end

feature -- Externals

	c_git_oid_fromstr (a_out: POINTER; str: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_fromstr ((git_oid*)$a_out, (char const*)$str);
			]"
		end

	c_git_oid_fromstrp (a_out: POINTER; str: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_fromstrp ((git_oid*)$a_out, (char const*)$str);
			]"
		end

	c_git_oid_fromstrn (a_out: POINTER; str: POINTER; length: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_fromstrn ((git_oid*)$a_out, (char const*)$str, (size_t)$length);
			]"
		end

	c_git_oid_fromraw (a_out: POINTER; raw: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_fromraw ((git_oid*)$a_out, (unsigned char const*)$raw);
			]"
		end

	c_git_oid_fmt (a_out: POINTER; id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_fmt ((char*)$a_out, (git_oid const*)$id);
			]"
		end

	c_git_oid_nfmt (a_out: POINTER; n: INTEGER; id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_nfmt ((char*)$a_out, (size_t)$n, (git_oid const*)$id);
			]"
		end

	c_git_oid_pathfmt (a_out: POINTER; id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_pathfmt ((char*)$a_out, (git_oid const*)$id);
			]"
		end

	c_git_oid_tostr_s (oid: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_tostr_s ((git_oid const*)$oid);
			]"
		end

	c_git_oid_tostr (a_out: POINTER; n: INTEGER; id: POINTER): POINTER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_tostr ((char*)$a_out, (size_t)$n, (git_oid const*)$id);
			]"
		end

	c_git_oid_cpy (a_out: POINTER; src: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_cpy ((git_oid*)$a_out, (git_oid const*)$src);
			]"
		end

	c_git_oid_cmp (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_cmp ((git_oid const*)$a, (git_oid const*)$b);
			]"
		end

	c_git_oid_equal (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_equal ((git_oid const*)$a, (git_oid const*)$b);
			]"
		end

	c_git_oid_ncmp (a: POINTER; b: POINTER; len: INTEGER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_ncmp ((git_oid const*)$a, (git_oid const*)$b, (size_t)$len);
			]"
		end

	c_git_oid_streq (id: POINTER; str: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_streq ((git_oid const*)$id, (char const*)$str);
			]"
		end

	c_git_oid_strcmp (id: POINTER; str: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_strcmp ((git_oid const*)$id, (char const*)$str);
			]"
		end

	c_git_oid_is_zero (id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_is_zero ((git_oid const*)$id);
			]"
		end

	c_git_oid_shorten_add (os: POINTER; text_id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_shorten_add ((git_oid_shorten*)$os, (char const*)$text_id);
			]"
		end

	c_git_oid_shorten_free (os: POINTER)
		external
			"C inline use <git2.h>"
		alias
			"[
				git_oid_shorten_free ((git_oid_shorten*)$os);
			]"
		end

	c_git_oid_iszero (id: POINTER): INTEGER
		external
			"C inline use <git2.h>"
		alias
			"[
				return git_oid_iszero ((git_oid const*)$id);
			]"
		end

feature -- Externals Address

end
