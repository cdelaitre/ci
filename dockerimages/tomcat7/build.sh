#!/bin/bash
FILE=apache-tomcat-7.0.59.tar.gz
URL=http://wwwftp.ciril.fr/pub/apache/tomcat/tomcat-7/v7.0.59/bin/${FILE}
if [ ! -s ${FILE} ]; then
  echo "Download [${URL}]..."
  wget ${URL}
  if [ $? -ne 0 ]; then
    echo "ERROR: unable to download [$URL]"
    exit 1
  fi
fi
if [ -s ${FILE} ]; then
  docker build --rm=true -t "cdelaitre/tomcat7" . |& tee build.log
fi
exit 0
