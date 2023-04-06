#!/usr/bin/env bash
python=$(ls /lib | grep -e "^python3.*" | sort -h | awk 'NR==1{print $1}')
cp -f ./vimsnippets.py /lib/$python/site-packages/vimsnippets.py
