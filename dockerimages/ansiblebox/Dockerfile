FROM centos
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

RUN yum -y update
RUN yum install -y passwd openssh-server openssh-clients initscripts
RUN yum install -y epel-release
RUN yum install -y ansible git
RUN useradd ansible -d /home/ansible -s /bin/bash
RUN echo "ansible:elbisna" | chpasswd
RUN /usr/sbin/sshd-keygen

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
