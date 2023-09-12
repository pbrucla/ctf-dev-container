ARG VARIANT="jammy"
FROM mcr.microsoft.com/devcontainers/base:ubuntu

LABEL dev.containers.features="common"

# Install Forensics Tools
COPY src/install-forensics.sh /tmp/install-forensics.sh
RUN apt-get update && bash /tmp/install-forensics.sh

# Install Pwn Tools
COPY src/install-pwn.sh /tmp/install-pwn.sh
RUN apt-get update && bash /tmp/install-pwn.sh
