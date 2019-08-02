FROM ubuntu:18.10

RUN apt-get update -y && apt-get apt-get install -y \
  awscli \
  git \
  curl \
 && rm -rf /var/lib/apt/lists/*
