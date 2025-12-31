#!/bin/bash

VOLUME=$(amixer get Master | grep -oP '\[\d+%\]' | head -1 | tr -d '[%]')

yad --scale \
    --text="Volume" \
    --title="Volume" \
    --class="volume-popup" \
    --value="$VOLUME" \
    --min-value=0 \
    --max-value=100 \
    --step=1 \
    --print-partial \
    --no-buttons \
    --width=200 \
    --height=50 \
    --window-icon=audio-volume-high
