#!/bin/bash

# Get the current Auto-Mute status for card 0 and 1
status0=$(amixer -c 0 get 'Auto-Mute Mode' | grep "Item0: 'Disabled'")
status1=$(amixer -c 1 get 'Auto-Mute Mode' | grep "Item0: 'Disabled'")

# If either status0 or status1 contains "Item0: 'Disabled'"
if [ "$status0" == "  Item0: 'Disabled'" ] || [ "$status1" == "  Item0: 'Disabled'" ]; then
    # One (or both) are Disabled -> turn both ON (Enabled)
    amixer -c 0 sset 'Auto-Mute Mode' Enabled
    amixer -c 1 sset 'Auto-Mute Mode' Enabled
else
    # Otherwise -> Disable both
    amixer -c 0 sset 'Auto-Mute Mode' Disabled
    amixer -c 1 sset 'Auto-Mute Mode' Disabled
fi
