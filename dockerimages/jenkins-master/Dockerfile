FROM jenkins
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

USER root
RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get install -y ansible
RUN rm -rf /var/lib/apt/lists/*

RUN yes "" | adduser --disabled-password ansible
RUN echo "Defaults:jenkins !requiretty" >> /etc/sudoers
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
