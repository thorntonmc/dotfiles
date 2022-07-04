#!/usr/bin/env bash
set -o pipefail

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR="${m}" polybar --reload example | tee -a "/tmp/polybar${m}.log" & disown
  done
else
  polybar --reload example &
fi
echo "Bars launched..."
