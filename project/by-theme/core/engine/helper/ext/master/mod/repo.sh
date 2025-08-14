

################################################################################
### Head: Master / Mod / Repo / all
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
### Tail: Master / Mod / Repo / all
################################################################################




################################################################################
### Head: Master / Mod / Repo / main
##

mod_repo_push_main () {

	#sys_repo_push_main

	sys_repo_commit_and_push_main

	return 0
}

mod_repo_overlay_main () {

	sys_repo_overlay_main

	return 0
}

##
### Tail: Master / Mod / Repo / main
################################################################################




################################################################################
### Head: Master / Sys / Repo / Overlay
##

sys_repo_overlay_main () {

	local source_dir_path="${REF_MASTER_TMP_DIR_PATH}/fix"
	local target_dir_path

	local prefix_name="ubuntu-iso-builder-import-pacstall"
	local work_dir_path="${REF_WORK_DIR_PATH}"
	local theme_list="${REF_ENTITY_THEME_LIST}"
	local desktop_list="${REF_ENTITY_DESKTOP_LIST}"


	local the_theme_name
	local the_desktop_name
	local the_first_level_dir_path
	local the_second_level_dir_path
	local the_second_level_dir_name


	echo
	echo mkdir -p "${work_dir_path}"
	echo
	mkdir -p "${work_dir_path}"


	for the_theme_name in ${theme_list}; do
		#echo "${the_theme_name}"

		the_first_level_dir_path="${work_dir_path}/${the_theme_name}"

		echo
		echo mkdir -p "${the_first_level_dir_path}"
		echo
		mkdir -p "${the_first_level_dir_path}"

		for the_desktop_name in ${desktop_list}; do

			the_second_level_dir_name="${prefix_name}-${the_desktop_name}-${the_theme_name}"
			the_second_level_dir_path="${the_first_level_dir_path}/${the_second_level_dir_name}"

			echo
			echo mkdir -p "${the_second_level_dir_path}"
			echo
			mkdir -p "${the_second_level_dir_path}"




			target_dir_path="${the_second_level_dir_path}/${the_second_level_dir_name}-main"


			echo
			echo mkdir -p "${source_dir_path}"
			echo
			mkdir -p "${source_dir_path}"


			echo
			echo mkdir -p "${target_dir_path}"
			echo
			mkdir -p "${target_dir_path}"


			echo
			echo cp -rfT "${source_dir_path}" "${target_dir_path}"
			echo
			cp -rfT "${source_dir_path}" "${target_dir_path}"




		done
	done


	return 0
}

sys_repo_overlay_gh_page () {

	local source_dir_path="${REF_MASTER_TMP_DIR_PATH}/fix"
	local target_dir_path

	local prefix_name="ubuntu-iso-builder-import-pacstall"
	local work_dir_path="${REF_WORK_DIR_PATH}"
	local theme_list="${REF_ENTITY_THEME_LIST}"
	local desktop_list="${REF_ENTITY_DESKTOP_LIST}"


	local the_theme_name
	local the_desktop_name
	local the_first_level_dir_path
	local the_second_level_dir_path
	local the_second_level_dir_name


	echo
	echo mkdir -p "${work_dir_path}"
	echo
	mkdir -p "${work_dir_path}"


	for the_theme_name in ${theme_list}; do
		#echo "${the_theme_name}"

		the_first_level_dir_path="${work_dir_path}/${the_theme_name}"

		echo
		echo mkdir -p "${the_first_level_dir_path}"
		echo
		mkdir -p "${the_first_level_dir_path}"

		for the_desktop_name in ${desktop_list}; do

			the_second_level_dir_name="${prefix_name}-${the_desktop_name}-${the_theme_name}"
			the_second_level_dir_path="${the_first_level_dir_path}/${the_second_level_dir_name}"

			echo
			echo mkdir -p "${the_second_level_dir_path}"
			echo
			mkdir -p "${the_second_level_dir_path}"




			target_dir_path="${the_second_level_dir_path}/${the_second_level_dir_name}-gh-pages"


			echo
			echo mkdir -p "${source_dir_path}"
			echo
			mkdir -p "${source_dir_path}"


			echo
			echo mkdir -p "${target_dir_path}"
			echo
			mkdir -p "${target_dir_path}"


			echo
			echo cp -rfT "${source_dir_path}" "${target_dir_path}"
			echo
			cp -rfT "${source_dir_path}" "${target_dir_path}"




		done
	done


	return 0
}

##
### Tail: Master / Sys / Repo / Overlay
################################################################################
