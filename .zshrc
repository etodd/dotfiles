HISTSIZE=99999  
export HISTFILE=${HISTFILE:-$HOME/.zsh_history}
HISTFILESIZE=$HISTSIZE
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

PROMPT="%F{blue}%n@%m %1~ %#%f "

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

export VISUAL=nvim
export EDITOR=nvim

source ~/.zprofile
set -o emacs
