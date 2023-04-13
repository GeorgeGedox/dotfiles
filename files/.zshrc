# Bootstrap
DISABLE_MAGIC_FUNCTIONS=true # Fix slow paste
DISABLE_AUTO_UPDATE=true # Disable OMZ updates

# Load paths
source ~/.dotfiles/files/paths.zsh

# Misc
## Pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

## Jenv
if [ -d "$HOME/.jenv" ]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

# Load antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# Powerlevel10k config. To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.dotfiles/files/.p10k.zsh

# Initialize fuzzyfind
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Initialize enhancd
source ~/.dotfiles/.enhancd/init.sh

# Load functions
source ~/.dotfiles/files/functions.zsh

# Load aliases
source ~/.dotfiles/files/aliases.zsh

# Load env config overwrites
source ~/.dotfiles/files/configs.zsh
