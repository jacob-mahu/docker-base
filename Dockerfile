FROM ubuntu:18.10

apt-get update -y && apt-get upgrade
apt-get install awscli git bash openssh-client -yqq
