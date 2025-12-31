#!/bin/bash
# ~/.config/custom_scripts/waybar_volume_control.sh
VOLUME=$(amixer get Master | grep -oP '\[\d+%\]' | head -1 | tr -d '[%]')
yad --scale \
    --text="Volume" \
    --title="Volume" \
    --value="$VOLUME" \
    --min-value=0 \
    --max-value=100 \
    --step=1 \
    --print-partial \
    --on-top \
    --skip-taskbar \
    --undecorated \
    --no-buttons \
    --width=200 \
    --height=50 \
    | while read vol; do
        amixer sset 'Master' "$vol%"
    done