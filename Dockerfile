FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  awscli \
  rsync \
  git \
  zip \
  unzip \
  wget \
  curl \
  php-cli \
  php-zip \
  php-xml \
  php-mbstring \
  php-curl \
  openssh-client \
  rsync \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir ~/.ssh/ && touch ~/.ssh/known_hosts && ssh-keyscan -p 10022 git.jacob.de >> ~/.ssh/known_hosts
COPY install_composer.sh install_composer.sh
RUN /bin/bash install_composer.sh
RUN composer global require hirak/prestissimo