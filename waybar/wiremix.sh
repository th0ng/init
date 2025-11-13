#!/bin/bash
# Launch floating terminal with Impala TUI

TERMINAL="kitty"  # Change to "alacritty" or "foot" if preferred
TITLE="Wiremix"

# Launch terminal with Wiremix, set title for window rules
$TERMINAL --title="$TITLE" -e wiremix -v output
