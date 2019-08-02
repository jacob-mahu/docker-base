FROM ubuntu:18.10

RUN apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  awscli \
  git \
  curl \
 && rm -rf /var/lib/apt/lists/*
