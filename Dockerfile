ARG VARIANT="jammy"
FROM mcr.microsoft.com/devcontainers/base:ubuntu

LABEL dev.containers.features="common"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
COPY src/* /tmp/
RUN for script in /tmp/*.sh; do bash "$script"; done
RUN rm -rf /tmp/*.sh