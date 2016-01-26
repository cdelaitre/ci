FROM jenkins
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>
# Switch to root
USER root
# Install ansible
RUN apt-get update && \
    apt-get install -y sudo vim && \
    apt-get install -y --no-install-recommends software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get install -y ansible && \
    rm -rf /var/lib/apt/lists/*
# Add ansible user
RUN yes "" | adduser --disabled-password ansible
# Configure jenkins user to sudoers
RUN echo "Defaults:jenkins !requiretty" >> /etc/sudoers
RUN echo "jenkins ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
# Switch back to jenkins
USER jenkins
