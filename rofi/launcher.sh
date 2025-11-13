#!/usr/bin/env bash

dir="$HOME/.config/rofi"
theme='launcher-theme'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
