#!/bin/bash
NAME=cdelaitre
TAG=centos:6
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
