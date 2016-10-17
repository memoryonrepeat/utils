#!/bin/bash
# TODO: Display/edit/delete reminders
# Command line reminder that runs in background and notify using OS X notification center
# Add the below function to .bashrc or .zshrc before using
# Usage: remind <minutes> [hours] [message]
minutes=${1:-1}; # default = 1
hours=${2:-0}; # default = 0
text=${3:-"Task"}; # default = "Task"
echo "Time's up after $hours hours $minutes minutes"
let secs=$minutes*60+$hours*60*60
sleep $secs
osascript -e "display notification \"$text\" with title \"Reminder\""

# https://stackoverflow.com/questions/7131670/make-bash-alias-that-takes-parameter
# https://stackoverflow.com/questions/7131670/make-bash-alias-that-takes-parameter#comment36589234_7131683
# remind(){
# 	. ~/timer.sh $1 $2 $3 &
# }
