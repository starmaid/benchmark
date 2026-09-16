FROM docker.io/ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# 1. Install standard build tools and PHP dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-file \
    php-cli \
    php-xml \
    php-curl \
    build-essential \
    cmake \
    autoconf \
    automake \
    libtool \
    pkg-config \
    nasm \
    yasm \
    git \
    wget \
    curl \
    unzip \
    openjdk-11-jdk \
    python3 \
    python3-pip \
    python3-yaml \
    perl \
    bc \
    bison \
    flex \
    libelf-dev \
    libssl-dev \
    mesa-utils \
    vulkan-tools \
    zlib1g-dev \
    libncurses-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# 2. Download and install the latest upstream Phoronix Test Suite .deb package
RUN wget https://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_10.8.4_all.deb -O /tmp/pts.deb && \
    dpkg -i /tmp/pts.deb && \
    rm /tmp/pts.deb

# 3. Pre-configure PTS for non-interactive execution
RUN phoronix-test-suite batch-setup

WORKDIR /benchmarks

ENTRYPOINT ["phoronix-test-suite"]
CMD ["list-available-tests"]