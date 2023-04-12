# Bootstrap
DISABLE_MAGIC_FUNCTIONS=true # Fix slow paste
DISABLE_AUTO_UPDATE=true # Disable OMZ updates

# Load paths
source ~/.dotfiles/files/paths.zsh

# Load antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# Powerlevel10k config. To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.dotfiles/files/.p10k.zsh ]] || source ~/.dotfiles/files/.p10k.zsh

# Load functions
source ~/.dotfiles/files/functions.zsh

# Load aliases
source ~/.dotfiles/files/aliases.zsh

eval "$(direnv hook zsh)"
