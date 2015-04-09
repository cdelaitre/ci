#!/bin/bash
NAME=cdelaitre
TAG=centos-openjdk:7
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
