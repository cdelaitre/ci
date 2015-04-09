FROM cdelaitre/openjdk:7
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

### TOMCAT
RUN mkdir -p /produits
ADD http://apache.mirrors.ovh.net/ftp.apache.org/dist/tomcat/tomcat-7/v7.0.59/bin/apache-tomcat-7.0.59.tar.gz /produits
RUN mv /produits/apache-tomcat-7.0.59 /produits/tomcat
WORKDIR /produits/tomcat
COPY tomcat-users.xml /produits/tomcat/conf/
RUN echo "CATALINA_HOME=/produits/tomcat" >> /etc/environment
EXPOSE 8080
ENTRYPOINT ["/produits/tomcat/bin/catalina.sh", "run"]
