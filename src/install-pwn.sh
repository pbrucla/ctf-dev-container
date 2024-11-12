#!/usr/bin/env bash

apt-get install -y netcat-openbsd libssl-dev liblzma-dev pkg-config patchelf elfutils gdbserver tmux

# Install Pwn Tools
cargo install pwninit
cargo install xgadget --features cli-bin
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
echo "alias pwninit='pwninit --template-path /usr/local/share/pwninit-template.py'" >/etc/profile.d/pwninit-template.sh
