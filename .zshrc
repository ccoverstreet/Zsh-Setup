# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/coverstreet/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme robbyrussell

antigen apply

# My Custom Prompt
function format_git_branch() {
	DIR_BRANCH="$(current_branch)"
	if [ -n "$DIR_BRANCH" ]
	then
		echo " (%F{002}$(current_branch)%f)"
	fi
}

PROMPT='%F{011}%n%f@%F{006}%M%f %F{010}%2d%f$(format_git_branch): '

# NVM
export NVM_DIR="$HOME/.config.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # Loads NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # Loads bash completion
