# General use
alias path='echo -e ${PATH//:/\\n}' # Formatted path
alias reload=". ~/.zshrc" # Reload shell
alias dln="aria2c -x 16 -s16 --" # Aria2 download

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

# Git & fzf
if [ -x "$(command -v fzf)" ] && [ -x "$(command -v git)" ]; then
  alias gst='git status'
  alias gd='git diff --color'
  alias gcb='git branch | fzf --header "Checkout branch" --preview "git show --color=always {-1}" | xargs git checkout'
  alias gloga="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
  alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
fi
