# Bootstrap
DISABLE_MAGIC_FUNCTIONS=true #Fix slow paste

# Load antibody
source <(antibody init)
antibody bundle < ~/.dotfiles/antibody_plugins

# Powerlevel10k config. To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh

# Load path setups
source ~/.dotfiles/paths.zsh

# Load functions
source ~/.dotfiles/functions.zsh

# Load aliases
source ~/.dotfiles/aliases.zsh