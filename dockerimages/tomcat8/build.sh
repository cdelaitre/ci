#!/bin/bash
NAME=cdelaitre
TAG=tomcat8
LOG=/tmp/build-${TAG}.log
FILE=apache-tomcat-8.0.21.tar.gz
URL=http://wwwftp.ciril.fr/pub/apache/tomcat/tomcat-8/v8.0.21/bin/${FILE}
if [ ! -s ${FILE} ]; then
  echo "Download [${URL}]..."
  wget ${URL}
  if [ $? -ne 0 ]; then
    echo "ERROR: unable to download [$URL]"
    exit 1
  fi
fi
if [ -s ${FILE} ]; then
  docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
  if [ $? -eq 0 ]; then
    mv ${FILE} /tmp
  fi
fi
exit 0
