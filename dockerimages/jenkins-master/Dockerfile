FROM jenkins
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

USER root
RUN apt-get update && \
    apt-get install -y sudoers software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
