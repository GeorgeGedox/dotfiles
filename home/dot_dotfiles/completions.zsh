# Homebrew completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

# Other completions
command -v flux >/dev/null && . <(flux completion zsh)
command -v chezmoi >/dev/null && . <(chezmoi completion zsh)
