FROM nvidia/cuda:12.5.1-base-ubuntu22.04

USER root

RUN apt-get update && \
    apt-get install --yes \
    bash \
    podman \
    podman-docker \
    build-essential \
    ca-certificates \
    curl \
    htop \
    jq \
    locales \
    man \
    python3 \
    python3-pip \
    software-properties-common \
    sudo \
    systemd \
    systemd-sysv \
    unzip \
    tmux \
    vim \
    wget \
    rsync && \
# Install latest Git using their official PPA
    add-apt-repository ppa:git-core/ppa && \
    apt-get install --yes git \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://code-server.dev/install.sh | sh

# Make typing unicode characters in the terminal work.
ENV LANG=en_US.UTF-8

# Add a user `coder` so that you're not developing as the `root` user
RUN useradd coder \
    --create-home \
    --shell=/bin/bash \
    --uid=1000 \
    --user-group && \
    echo "coder ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers.d/nopasswd

USER coder