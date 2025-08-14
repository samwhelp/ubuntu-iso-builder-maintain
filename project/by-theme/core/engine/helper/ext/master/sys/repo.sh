

################################################################################
### Head: Master / Sys / Repo
##

sys_repo_prepare_dir () {

	local prefix_name="ubuntu-iso-builder-import-pacstall"
	local dist_dir_path="${REF_DISTRO_DIST_DIR_PATH}"
	local theme_list="${REF_ENTITY_THEME_LIST}"
	local desktop_list="${REF_ENTITY_DESKTOP_LIST}"


	local the_theme_name
	local the_desktop_name
	local the_first_level_dir_path
	local the_second_level_dir_path
	local the_second_level_dir_name

	for the_theme_name in ${theme_list}; do
		#echo "${the_theme_name}"

		the_first_level_dir_path="${dist_dir_path}/${the_theme_name}"

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

		done
	done


	return 0
}

sys_repo_prepare_dir_and_clone_file () {

	local prefix_name="ubuntu-iso-builder-import-pacstall"
	local dist_dir_path="${REF_DISTRO_DIST_DIR_PATH}"
	local theme_list="${REF_ENTITY_THEME_LIST}"
	local desktop_list="${REF_ENTITY_DESKTOP_LIST}"


	local the_theme_name
	local the_desktop_name
	local the_first_level_dir_path
	local the_second_level_dir_path

	for the_theme_name in ${theme_list}; do
		#echo "${the_theme_name}"

		the_first_level_dir_path="${dist_dir_path}/${the_theme_name}"

		echo
		echo mkdir -p "${the_first_level_dir_path}"
		echo
		mkdir -p "${the_first_level_dir_path}"

		for the_desktop_name in ${desktop_list}; do

			the_second_level_dir_path="${the_first_level_dir_path}/${prefix_name}-${the_desktop_name}-${the_theme_name}"

			echo
			echo mkdir -p "${the_second_level_dir_path}"
			echo
			mkdir -p "${the_second_level_dir_path}"

		done
	done


	return 0
}


##
### Tail: Master / Sys / Repo
################################################################################
