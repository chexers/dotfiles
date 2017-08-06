#!/usr/bin/env bash
# vi: ft=sh

source ~/.config/setup/.lib.sh

BNAM=$(basename $0)
DNAM=$(dirname $0)

echo -e "\n\nbase\t$BNAM\ndir  $DNAM"

echo -e "\n\nspat\t\t${SCRIPT_PATH}\N"

ANSWER=$(dirname "$BASH_SOURCE")
echo -e "\n\nfinal\t\t$ANSWER\n"
