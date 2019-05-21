#!/bin/bash

function smushit {
echo /opt/prestashop/resmushit-cli/resmushit-cli.sh "$1" -0 $(dirname "$1")
}

cd /opt/prestashop/prestashop/
ls  | xargs smushit

find $(pwd) -iname "*.jpg" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.tif"  \) | xargs smushit

