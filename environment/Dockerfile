# hash:sha256:1796cbd2d3d2fda7bdddcb42610ae3921fe057ad0c93622ebdd3a9dd87a35635
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget=1.21.2-2ubuntu1 \
    && rm -rf /var/lib/apt/lists/*
