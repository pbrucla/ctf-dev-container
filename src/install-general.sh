#!/usr/bin/env bash

# Install General Tools
apt-get install -y python3-pip ruby php

# Install Rust
export CARGO_INSTALL_ROOT='/usr/local'
curl https://sh.rustup.rs -sSf | bash -s -- -y
echo 'source "$HOME/.cargo/env"' >> "$HOME/.profile"
source "$HOME/.cargo/env"

# Install Python libs
pip3 install --upgrade pip
pip3 install --upgrade pwntools angr z3-solver requests aiohttp tqdm pycrypto patchelf ROPgadget
