FROM alpine:latest

# Install Forensics Tools
COPY src/install-forensics.sh /tmp/install-forensics.sh
RUN apt-get update && bash /tmp/install-forensics.sh

# Install Pwn Tools
COPY src/install-pwn.sh /tmp/install-pwn.sh
RUN apt-get update && bash /tmp/install-pwn.sh