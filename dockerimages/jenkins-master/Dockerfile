FROM jenkins
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>
# Switch to root
USER root
# Install ansible
ENV ANSIBLE_VERSION=2.0.1.0
RUN apt-get update && \
    apt-get install -y sudo vim python-setuptools python-crypto && \
    rm -rf /var/lib/apt/lists/*
RUN cd /tmp && \
    curl -LO http://releases.ansible.com/ansible/ansible-${ANSIBLE_VERSION}.tar.gz && \
    tar -xzf ansible-${ANSIBLE_VERSION}.tar.gz && \
    cd ansible-${ANSIBLE_VERSION} && \
    python setup.py install && \
    cd /tmp && \
    rm ansible-${ANSIBLE_VERSION}.tar.gz && \
    rm -rf ansible-${ANSIBLE_VERSION}
# Add user ansible
RUN yes "" | adduser --disabled-password ansible
# Configure jenkins to sudoers
RUN echo "Defaults:jenkins !requiretty" >> /etc/sudoers
RUN echo "jenkins ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
# Switch back to jenkins
USER jenkins
