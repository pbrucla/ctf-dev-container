#!/usr/bin/env bash

# Install Rev Tools
apt install -y gdb
curl -fsSLo /usr/local/lib/gef.py 'https://github.com/hugsy/gef/raw/main/gef.py'