FROM jenkins
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

RUN apt-get -y update && \
    apt-get install -y sudoers software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get -y update && \
    apt-get -y install ansible
