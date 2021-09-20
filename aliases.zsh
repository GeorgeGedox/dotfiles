alias path='echo -e ${PATH//:/\\n}' # Formatted path
alias ssh="assh wrapper ssh --" # SSH wrapper using assh project
alias reload=". ~/.zshrc" # Reload shell
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ll="ls -lah"