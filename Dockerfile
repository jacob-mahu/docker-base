FROM ubuntu:18.10

RUN apt-get update -y && apt-get upgrade
RUN apt-get install awscli git bash openssh-client -yqq
