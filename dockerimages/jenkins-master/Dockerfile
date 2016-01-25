FROM jenkins
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

USER root
RUN apt-get update
RUN apt-get install -y sudo software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible
RUN rm -rf /var/lib/apt/lists/*

RUN adduser --quiet ansible
RUN echo "ansible:ansible" | chpasswd

RUN adduser jenkins sudo

USER jenkins
