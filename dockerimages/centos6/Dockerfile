FROM centos:centos6
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

### SET HTTP PROXY
RUN echo "proxy=http://proxyav.intranet.sante.gouv.fr:8080/" >> /etc/yum.conf

### SYS OS UPDATE
RUN yum -y update && yum clean all
