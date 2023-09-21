ARG VARIANT="jammy"
FROM mcr.microsoft.com/devcontainers/base:ubuntu

LABEL dev.containers.features="common"

RUN sudo apt-get update && export DEBIAN_FRONTEND=noninteractive

# Install Forensics Tools
COPY src/install-forensics.sh /tmp/install-forensics.sh
RUN sudo bash /tmp/install-forensics.sh

# Install Pwn Tools
COPY src/install-pwn.sh /tmp/install-pwn.sh
RUN sudo bash /tmp/install-pwn.sh

# Install Rev Tools
COPY src/install-rev.sh /tmp/install-rev.sh
RUN sudo bash /tmp/install-rev.sh