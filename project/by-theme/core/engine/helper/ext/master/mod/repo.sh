

################################################################################
### Head: Master / Mod / Repo
##

mod_repo_clone_all () {

	sys_repo_prepare_dir_and_clone_file_and_clone_repo

	return 0
}

mod_repo_push_all () {

	#sys_repo_push_all

	sys_repo_commit_and_push_all

	return 0
}

mod_repo_pull_all () {

	sys_repo_pull_all

	return 0
}

##
### Tail: Master / Mod / Repo
################################################################################
