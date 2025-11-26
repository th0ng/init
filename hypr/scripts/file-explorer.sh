#!/bin/bash

TERMINAL="kitty"  # Change to "alacritty" or "foot" if preferred
TITLE="Yazi"

# Launch terminal with Wiremix, set title for window rules
$TERMINAL --title="$TITLE" -e yazi
