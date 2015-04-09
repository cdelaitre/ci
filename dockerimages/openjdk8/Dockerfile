FROM cdelaitre/centos:6
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

##### ENV
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk
ENV PKG_JDK=java-1.8.0-openjdk-devel

##### JDK
RUN yum -y install ${PKG_JDK} && yum clean all
RUN alternatives --install /usr/bin/java java ${JAVA_HOME}/bin/java 1
RUN alternatives --install /usr/bin/javac javac ${JAVA_HOME}/bin/javac 1
RUN echo "JAVA_HOME=${JAVA_HOME}" >> /etc/environment
