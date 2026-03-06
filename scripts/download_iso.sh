#!/bin/bash

ISO=$(curl -s https://archlinux.org/download/ \
| grep -m1 "iso" \
| grep https \
| awk -F\" '{print $2}')

echo "Downloading ISO..."

curl -L $ISO -o /vm/arch.iso --progress-bar
