################################################################################
#      				   ------       /  /      ||  ||                           #
#					     / /       (  (       ||__||                           #
# 					   / /          )  )      ||--||                           #
#					  ------       /  /       ||  ||                           #
################################################################################

print -Pn "\e]0;💤💰🏨\a"                   # change window header
autoload -U colors && colors				# load colors

# -- P R O M P T --

autoload -Uz vcs_info                       # Load version control information
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '[%F{red}%b%f]'  #format for git branch
setopt PROMPT_SUBST
PROMPT='%F{green}%U%n%u %f: %F{magenta}%B%~%b%f  '
RPROMPT='${vcs_info_msg_0_}[%F{yellow}%w%f/%F{green}%T%f]'

# -- B I N D K E Y --
bindkey '^a'	beginning-of-line					   	# go to the beginning
bindkey '^z'	end-of-line						   		# go to the end
bindkey '^d'	delete-char						   		# delete pointed char
bindkey '^w'	backward-kill-word						# kill word
bindkey '^b'	backward-word							# go to previous word
bindkey '^n'	forward-word							# got to next word
bindkey '^y'	yank									# paste the killed buf
bindkey 'ESC-l'	down-case-word							# lower-case the char
bindkey 'ESC-c'	capitalize-word							# upper-case the char
bindkey "^[[A"	history-beginning-search-backward       # move up in history
bindkey "^[[B"	history-beginning-search-forward        # move down in history

# - - - - - - - - - - - - - - - - - A L I A S - - - - - - - - - - - - - - - - -

alias norm="norminette -R CheckForbiddenSourceHeader"  # for 42
alias gccf="gcc -Wall -Werror -Wextra"				   # for 42

alias ..="cd .."									   # go to parent directory
alias ...="cd ../.."								   # go to grand-parent
alias="pwd"										   # show path
alias v="vim"
alias 4e="cat -e"									   # show special characters
export GREP_COLOR=32  					               # green
alias grep="grep --color=always -Hn"	               # color, file, line

# -- G I T --

alias gs="git status"							       # display tracked files
alias ga="git add ."                                   # stage current directory
alias gas="git add . && git status"					   # do both
alias gcl="git clone"								   # clone repository
alias gcm="git commit -m"							   # commit tracked files
alias gpl="git pull"								   # pull from repository

# -- L S --
alias l="ls -G"										   # color
alias lr="ls -RG"									   # recursive
alias la="ls -aG"									   # show dot files
alias ll="ls -lahG"									   # more infos

# -- M A K E --
alias mfc="make fclean"								   # rm .o, .d and binary
alias mc="make clean"								   # rm .o and .d
alias mk="make"										   # compile

# - - - - - - - - - - - -  - - C O M P L E T I O N - - - - - - - - - - - - - - -
autoload -U compinit
compinit
zmodload -i zsh/complist									# load completion

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2    					# active menu
zstyle ':completion:*:kill:*' force-list always				# force show menu
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 	# case insensitive
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' rehash true					# hashes before completion
zstyle ':completion:*' verbose yes					# active informations
zstyle ':completion:*' auto-description 			# gives info on command flags
zstyle ':completion:*' group-name ''				# show tags groups
zstyle ':completion:*:default' list-colors 'di=38;5;226'	# tags color
zstyle ':completion:*:messages' format $'%F{yellow}%d%f'
zstyle ':completion:*:descriptions' format '%F{cyan}[ -> %d <- ]%f'
zstyle ':completion:*:warnings' format '%F{red}No match%f'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %s
zstyle ':completion:*:*' group-order local-directories executable-files aliases builtins 

# O P T I O N S
setopt auto_menu
setopt auto_cd
setopt correct
setopt hash_list_all
setopt completealiases
setopt list_ambiguous
setopt always_to_end
setopt complete_in_word
setopt no_case_glob
unsetopt glob_dots
setopt extended_glob
setopt auto_remove_slash

# -- NO SOUND ! --
unsetopt beep
unsetopt hist_beep
unsetopt list_beep
unsetopt hup

# ------------ H I S T O R I K -------------
HISTFILE=~/.zsh_history
HISTSIZE=1024
SAVEHIST=1024

setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt hist_reduce_blanks
unsetopt hist_ignore_space
setopt HIST_VERIFY
setopt append_history
setopt SHARE_HISTORY
setopt inc_append_history

# Put in verbose mode all those commands
for c in cp rm chmod mkdir mv; do
	alias $c="$c -v"
done

