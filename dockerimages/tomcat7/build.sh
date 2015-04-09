#!/bin/bash
NAME=cdelaitre
TAG=tomcat:7
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
