

################################################################################
### Head: Args
##

args_var_init () {

	##
	## ## Load Args File
	##

	[ -f "${REF_MASTER_OPTION_ARGS_FILE_PATH}" ] && . "${REF_MASTER_OPTION_ARGS_FILE_PATH}"

	[ -f "${REF_MASTER_OPTION_ARGS_OVERRIDE_FILE_PATH}" ] && . "${REF_MASTER_OPTION_ARGS_OVERRIDE_FILE_PATH}"


	return 0
}

args_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: args_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Args From File Override"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo "REF_WORK_DIR_PATH=${REF_WORK_DIR_PATH}"
	util_debug_echo


	util_debug_echo "REF_ENTITY_THEME_LIST=${REF_ENTITY_THEME_LIST}"
	util_debug_echo "REF_ENTITY_DESKTOP_LIST=${REF_ENTITY_DESKTOP_LIST}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: args_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo




	return 0
}


##
### Head: Args
################################################################################
