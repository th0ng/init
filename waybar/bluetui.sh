#!/bin/bash
# Launch floating terminal with Impala TUI

TERMINAL="kitty"  # Change to "alacritty" or "foot" if preferred
TITLE="Bluetooth"

# Launch terminal with Impala, set title for window rules
$TERMINAL --title="$TITLE" -e bluetui 
