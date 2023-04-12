alias path='echo -e ${PATH//:/\\n}' # Formatted path
alias reload=". ~/.zshrc" # Reload shell
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ll="ls -lah"
alias hg="history | grep -i"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail' # Laravel sail

# Replace ssh only if assh is used
if [ "command -v assh" ]; then
  alias ssh="assh wrapper ssh --"
fi

# Replace cat
if [ "command -v bat" ]; then
  alias cat="bat --paging=never"
fi

# Replace ls, ll
if [ "command -v exa" ]; then
  alias ls='exa'
  alias ll='exa -lah --git'
fi
