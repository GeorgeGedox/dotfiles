# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

# Go
if [ -d "/usr/local/go/bin" ]; then
  PATH="$PATH:/usr/local/go/bin"
fi

# NVM
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# Pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# Jenv
if [ -d "$HOME/.jenv" ]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

# Homebrew
case "$(uname -s)" in
  Darwin)
    if [ -d "/opt/homebrew/bin" ]; then
      PATH="$PATH:/opt/homebrew/bin"
    fi
    ;;
  Linux)
    if [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
      PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
    fi
    ;;
esac
