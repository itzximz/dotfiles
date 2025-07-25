#!/bin/bash

STATE_FILE="$HOME/.cache/do-not-disturb"

if [[ -f "$STATE_FILE" ]]; then
    makoctl mode -r do-not-disturb
    rm "$STATE_FILE"
else
    makoctl mode -a do-not-disturb
    touch "$STATE_FILE"
fi

