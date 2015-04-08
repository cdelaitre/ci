FROM centos:centos6
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

### ENV PROXY HTTP
# Replace __PROXY_HOST__ and __PROXY_PORT__ to set http_proxy env here
ENV http_proxy http://__PROXY_HOST__:__PROXY_PORT__/

### SYS CONF YUM
RUN echo "proxy=${http_proxy}" >> /etc/yum.conf

### SYS OS UPDATE
RUN yum -y update; yum clean all
