alias path='echo -e ${PATH//:/\\n}' # Formatted path
alias reload=". ~/.zshrc" # Reload shell
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ll="ls -lah"
alias hg="history | grep -i"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail' # Laravel sail

# Replace ssh
if [ -x "$(command -v assh)" ]; then
  alias ssh="assh wrapper ssh --"
fi

# Replace cat
if [ -x "$(command -v bat)" ]; then
  alias cat="bat --paging=never --theme=OneHalfDark"
fi

# Use eza for directory listing
if [ -x "$(command -v eza)" ]; then
  alias ls='eza --icons=auto'
  alias ll='eza --group --header --group-directories-first --long --git --icons=auto'
  alias la='eza --all --group --header --group-directories-first --long --git --icons=auto'
fi
