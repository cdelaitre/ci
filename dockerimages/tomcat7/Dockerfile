FROM cdelaitre/centos-openjdk:7
MAINTAINER Christophe Delaitre <cdelaitre@gmail.com>

### TOMCAT
RUN mkdir -p /produits
ADD apache-tomcat-7.0.63.tar.gz /produits
RUN mv /produits/apache-tomcat-7.0.63 /produits/tomcat
WORKDIR /produits/tomcat
COPY tomcat-users.xml /produits/tomcat/conf/
RUN echo "CATALINA_HOME=/produits/tomcat" >> /etc/environment
EXPOSE 8080
ENTRYPOINT ["/produits/tomcat/bin/catalina.sh", "run"]
