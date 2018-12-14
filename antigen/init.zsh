#-- START ZCACHE GENERATED FILE
#-- GENERATED: sex dez 14 10:55:05 -02 2018
#-- ANTIGEN develop
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/renan-eccel/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib /home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git) path+=(/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib /home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/home/renan-eccel/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/themes/refined.zsh-theme.antigen-compat';
source '/home/renan-eccel/dotfiles/antigen/bundles/robbyrussell/oh-my-zsh/themes/robbyrussell.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/refined.zsh-theme theme true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/robbyrussell.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/themes/refined.zsh-theme' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/themes/refined.zsh-theme' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/themes/robbyrussell.zsh-theme' '/home/renan-eccel/.antigen/bundles/robbyrussell/oh-my-zsh/themes/robbyrussell.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='develop'
typeset -g _ANTIGEN_THEME; _ANTIGEN_THEME='robbyrussell'

#-- END ZCACHE GENERATED FILE
