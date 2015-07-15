#!/bin/bash
NAME=cdelaitre
TAG=centos-tomcat:7
LOG=/tmp/build-${TAG}.log
TOMCAT_VERSION=7.0.63
FILE=apache-tomcat-${TOMCAT_VERSION}.tar.gz
if [ ! -f ${FILE} ]; then
  curl http://apache.mirrors.ovh.net/ftp.apache.org/dist/tomcat/tomcat-7/v${TOMCAT_VERSION}/bin/${FILE} -o ${FILE}
  if [ $? -ne 0 ]; then
    echo "ERROR: unable to download [$URL]"
    exit 1
  fi
fi
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
if [ $? -eq 0 ]; then
  rm -f ${FILE}
fi
