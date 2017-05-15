FROM centos:centos6
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

### SET HTTP PROXY
RUN echo "proxy=$http_proxy" >> /etc/yum.conf

### SYS OS UPDATE
RUN yum -y update && yum clean all
