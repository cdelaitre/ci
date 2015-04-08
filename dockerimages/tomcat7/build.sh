#!/bin/bash
wget http://wwwftp.ciril.fr/pub/apache/tomcat/tomcat-7/v7.0.59/bin/apache-tomcat-7.0.59.tar.gz
docker build --rm=true -t "cdelaitre/tomcat7" . |& tee build.log
