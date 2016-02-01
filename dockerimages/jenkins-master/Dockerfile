FROM jenkins
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>
# Switch to root
USER root
# Install ansible
RUN apt-get update && \
    apt-get install -y sudo vim python-setuptools python-crypto && \
#    apt-get install -y --no-install-recommends software-properties-common && \
#    apt-add-repository ppa:ansible/ansible && \
#    apt-get install -y ansible && \
    rm -rf /var/lib/apt/lists/*

# install Ansible 1.9.4
RUN cd /tmp && \
    curl -LO http://releases.ansible.com/ansible/ansible-1.9.4.tar.gz && \
    tar -xzf ansible-1.9.4.tar.gz && \
    cd ansible-1.9.4 && \
    python setup.py install && \
    cd /tmp && \
    rm ansible-1.9.4.tar.gz && \
    rm -rf ansible-1.9.4

# Add ansible user
RUN yes "" | adduser --disabled-password ansible
# Configure jenkins user to sudoers
RUN echo "Defaults:jenkins !requiretty" >> /etc/sudoers
RUN echo "jenkins ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
# Switch back to jenkins
USER jenkins
