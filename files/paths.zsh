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
  export PATH="$PATH:/usr/local/go/bin"
fi

# NVM
if [ -d "$HOME/.nvm" ]; then
  NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# Homebrew
case "$(uname -s)" in
  Darwin)
    if [ -d "/opt/homebrew/bin" ]; then
      export PATH="$PATH:/opt/homebrew/bin"
    fi
    ;;
  Linux)
    if [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
      export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
    fi
    ;;
esac
