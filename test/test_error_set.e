note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ERROR_SET

inherit
	EQA_TEST_SET

feature -- Test routines

	test_open
			-- New test routine
		local
			l_error: INTEGER
			l_rep: GIT_REPOSITORY_STRUCT_API
			init: INTEGER
		do
			init := {LIBGIT2_INITIALIZER_API}.git_libgit2_init
			create l_rep.make
			l_error := {LIBGIT2_REPOSITORY}.git_repository_open (l_rep, "")
			assert ("Error < 0", l_error < 0)
			if attached {GIT_ERROR_STRUCT_API} {LIBGIT2_ERROR_API}.git_error_last as l_gerror then
				print ("%NMessage: " + if attached l_gerror.message as l_message then l_message.string else "" end)
			end
		end

end


