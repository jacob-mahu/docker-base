FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  awscli \
  git \
  php-cli \
  wget \
  curl \
  openssh-client \
  rsync \
 && rm -rf /var/lib/apt/lists/*
