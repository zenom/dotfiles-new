export EDITOR='mvim -w'

export CC='/usr/bin/gcc'

# Used for autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi
