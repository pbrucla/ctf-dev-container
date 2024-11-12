#!/usr/bin/env bash

apt-get install -y python3-pip ruby netcat-openbsd file libssl-dev liblzma-dev pkg-config patchelf elfutils gdb gdbserver tmux

pip3 install --upgrade pip
pip3 install --upgrade pwntools patchelf ROPgadget

# Install Pwn Tools
curl https://sh.rustup.rs -sSf | bash -s -- -y
source "$HOME/.cargo/env"
# Hack: Install pwninit and xgadget in /usr/local to allow these to be accessed
cargo install pwninit --root="/usr/local"
cargo install xgadget --features="cli-bin" --root="/usr/local"
gem install one_gadget

bash -c "$(curl -fsSL https://gef.blah.cat/sh)" -s -y
cp /root/.gdbinit /home/vscode/.gdbinit && chown vscode:vscode /home/vscode/.gdbinit
cp /root/.gef-*.py /home/vscode/ && chown vscode:vscode /home/vscode/.gef-*.py

echo 'Configuring pwntools'
cat <<-'EOF' >/etc/pwn.conf
	[update]
	interval=never
EOF

echo 'Configuring pwninit'
cat <<-'EOF' >/usr/local/share/pwninit-template.py
	#!/usr/bin/env python3

	from pwn import *

	context.terminal = ["tmux", "splitw", "-h"]

	{bindings}

	context.binary = {bin_name}

	if args.REMOTE:
	    r = remote("addr", 1337)
	else:
	    r = process({proc_args})
	    if args.GDB:
	        gdb.attach(r)



	r.interactive()
EOF

echo -e "\n# pwninit\nalias pwninit='pwninit --template-path /usr/local/share/pwninit-template.py'" >> /home/vscode/.bashrc
