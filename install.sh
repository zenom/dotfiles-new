#!/bin/sh
brew_path=$(which brew)
if [[ -f $brew_path ]]
then
  brew install ack tmux macvim git grc
else
  echo "Please install homebrew."
fi
