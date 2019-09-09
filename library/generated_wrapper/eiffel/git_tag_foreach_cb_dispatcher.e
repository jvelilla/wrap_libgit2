note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GIT_TAG_FOREACH_CB_DISPATCHER

inherit

	EWG_LIBGIT2_CALLBACK_C_GLUE_CODE_FUNCTIONS_API
		export {NONE} all end
create
	make

feature -- Initialization

	make (a_routine: like routine) 
				-- Dispatcher initialization
		do
			routine := a_routine
			set_git_tag_foreach_cb_entry (Current, $on_callback)
		end

feature --Access: Routine 

	routine: FUNCTION [TUPLE [a_name: POINTER; a_oid: POINTER; a_payload: POINTER], INTEGER]  
			--Eiffel routine to be call on callback.

feature --Access: Dispatcher

	c_dispatcher: POINTER 
		do
			Result := get_git_tag_foreach_cb_stub
		end

feature --Access: Callback

	on_callback (a_name: POINTER; a_oid: POINTER; a_payload: POINTER): INTEGER  
		do
			Result := routine (a_name, a_oid, a_payload)
		end

end
