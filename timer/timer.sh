#!/bin/bash
# Command line reminder that runs in background and notify using OS X notification center
# Usage: remind <minutes> [hours] [message]
minutes=${1:-1}; # default = 1
hours=${2:-0}; # default = 0
text=${3:-"Task"}; # default = "Task"
echo "Time's up after $hours hours $minutes minutes"
let secs=$minutes*60+$hours*60*60
sleep $secs
osascript -e "display notification \"$text\" with title \"Reminder\""
