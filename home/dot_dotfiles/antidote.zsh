ANTIDOTE_PATH=$(brew --prefix)/opt/antidote/share/antidote
if [ -d "$ANTIDOTE_PATH" ]; then
  source $ANTIDOTE_PATH/antidote.zsh
  antidote load
fi
