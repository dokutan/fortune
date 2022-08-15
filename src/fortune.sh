#!/usr/bin/env sh
FORTUNES="$HOME/.config/fortune.sh/all"
COLS=$(tput cols)

# this assumes a light terminal background
tput setaf $(shuf -i 17-225 | grep -vE "19[0-5]|15[4-9]" | head -n 1)

tput bold
fortune -n "$COLS" -s "$FORTUNES"
tput sgr0
