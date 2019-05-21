#!/usr/bin/env bash

cd /opt/prestashop/prestashop/
find $(pwd) -iname "*.jpg" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.tif"  \)   -print0 | \
    (while read -d $'\0' i; do /opt/resmushit-cli/resmushit-cli.sh "$i" --preserve-filename -o "$(dirname "$i")" ;  done)


