

################################################################################
### Head: Master / Util / Repo
##

util_repo_create_clone_script_content () {

	local repo_name="${1}"




cat << __EOF__




git clone -b main git@github.com:samwhelp/${repo_name}.git ${repo_name}-main

cd ${repo_name}-main

git config user.name samwhelp
git config user.email samwhelp@users.noreply.github.com

cd "\${OLDPWD}"




git clone -b gh-pages git@github.com:samwhelp/${repo_name}.git ${repo_name}-gh-pages

cd ${repo_name}-gh-pages

git config user.name samwhelp
git config user.email samwhelp@users.noreply.github.com

cd "\${OLDPWD}"




__EOF__




	return 0
}

##
### Tail: Master / Util / Repo
################################################################################
