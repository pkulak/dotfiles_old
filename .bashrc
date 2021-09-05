#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
	exec fish
fi
