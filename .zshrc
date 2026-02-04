HISTSIZE=99999  
export HISTFILE=${HISTFILE:-$HOME/.zsh_history}
HISTFILESIZE=$HISTSIZE
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

PROMPT="%F{blue}%n@%m %1~ %#%f "
function precmd () {
	print -Pn - '\e]0;%~\a'
}

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

if command -v nvim >/dev/null 2>&1; then
	export EDITOR=nvim
	export VISUAL=nvim
else
	export EDITOR=vim
	export VISUAL=vim
fi

source ~/.zprofile
set -o emacs
