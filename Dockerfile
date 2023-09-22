ARG VARIANT="jammy"
FROM mcr.microsoft.com/devcontainers/base:ubuntu

LABEL dev.containers.features="common"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
COPY src/* /
RUN for script in /*.sh; do bash $script; done
RUN rm -rf /*.sh