#!/bin/bash
NAME=cdelaitre
TAG=centos-tomcat:8
LOG=/tmp/build-${TAG}.log
FILE=apache-tomcat-8.0.26.tar.gz
curl http://apache.mirrors.ovh.net/ftp.apache.org/dist/tomcat/tomcat-8/v8.0.26/bin/${FILE} -o ${FILE}
if [ $? -ne 0 ]; then
  echo "ERROR: unable to download [$URL]"
  exit 1
fi
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
if [ $? -eq 0 ]; then
  rm -f ${FILE}
fi
