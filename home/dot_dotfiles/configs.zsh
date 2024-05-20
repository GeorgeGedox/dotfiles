# Basic setup
export EDITOR="vim"
export VISUAL="vim"

# History config
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=20000
export SAVEHIST=20000

# EnhanCD & fzf configs
export ENHANCD_DIR="$HOME/.config/enhancd"
export ENHANCD_ENABLE_HOME=false
export ENHANCD_FILTER="fzf --height 50% --preview='eza -T --color --icons --group-directories-first -L 1 {}'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window up:3:hidden:wrap --height 80%"
