# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# Go
if [ -d "/usr/local/go/bin" ]; then
  export PATH="/usr/local/go/bin:$PATH"
fi

# NVM
if [ -d "$HOME/.nvm" ]; then
  NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

# Homebrew
case "$(uname -s)" in
  Darwin)
    if [ -d "/opt/homebrew/bin" ]; then
      export PATH="/opt/homebrew/bin:$PATH"
    fi
    ;;
  Linux)
    if [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
      export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    fi
    ;;
esac

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

## Jenv
if [ -d "$HOME/.config/herd-lite" ]; then
  export PATH="$HOME/.config/herd-lite/bin:$PATH"
  export PHP_INI_SCAN_DIR="$HOME/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
fi
