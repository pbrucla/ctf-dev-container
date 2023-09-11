FROM ubuntu:latest

# Install Forensics Tools
COPY src/install-forensics.sh /tmp/install-forensics.sh
RUN sudo apt update && bash /tmp/install-forensics.sh

# Install Pwn Tools
COPY src/install-pwn.sh /tmp/install-pwn.sh
RUN sudo apt update && sudo bash /tmp/install-pwn.sh