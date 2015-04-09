#!/bin/bash
NAME=cdelaitre
TAG=centos-tomcat:7
LOG=/tmp/build-${TAG}.log
FILE=apache-tomcat-7.0.59.tar.gz
curl http://apache.mirrors.ovh.net/ftp.apache.org/dist/tomcat/tomcat-7/v7.0.59/bin/${FILE} -o ${FILE}
if [ $? -ne 0 ]; then
  echo "ERROR: unable to download [$URL]"
  exit 1
fi
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
