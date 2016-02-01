FROM jenkins
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>
# Switch to root
USER root
# Install ansible 1.9.4 manually
RUN apt-get update && \
    apt-get install -y sudo vim python-setuptools python-crypto && \
    rm -rf /var/lib/apt/lists/*
RUN cd /tmp && \
    curl -LO http://releases.ansible.com/ansible/ansible-1.9.4.tar.gz && \
    tar -xzf ansible-1.9.4.tar.gz && \
    cd ansible-1.9.4 && \
    python setup.py install && \
    cd /tmp && \
    rm ansible-1.9.4.tar.gz && \
    rm -rf ansible-1.9.4
# Add user ansible
RUN yes "" | adduser --disabled-password ansible
# Configure jenkins to sudoers
RUN echo "Defaults:jenkins !requiretty" >> /etc/sudoers
RUN echo "jenkins ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
# Switch back to jenkins
USER jenkins
