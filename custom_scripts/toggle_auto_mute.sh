#!/bin/bash

# Get the current Auto-Mute status
status=$(amixer -c 0 get 'Auto-Mute Mode' | grep "Item0: 'Disabled'")
echo "$status"
if [ "$status" == "  Item0: 'Disabled'" ]; then
    # Disable Auto-Mute
    amixer -c 0 sset 'Auto-Mute Mode' Enabled
else
    # Enable Auto-Mute
    amixer -c 0 sset 'Auto-Mute Mode' Disabled
fi