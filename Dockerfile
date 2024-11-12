ARG VARIANT="jammy"
FROM mcr.microsoft.com/devcontainers/base:ubuntu

LABEL dev.containers.features="common"

ENV DEBIAN_FRONTEND=noninteractive

COPY src/* /tmp/
RUN apt-get update && bash /tmp/install-general.sh && bash /tmp/install-pwn.sh && rm /tmp/install-general.sh && rm /tmp/install-pwn.sh
#RUN for script in /tmp/*.sh; do bash "$script"; done
#RUN export PATH=/usr/vscode/.cargo/bin:$PATH
RUN rm -rf /tmp/*.sh
