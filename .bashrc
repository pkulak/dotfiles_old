#
# ~/.bashrc
#

# Start up our window manager
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec ~/dotfiles/bin/sway-run
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
	exec fish
fi
