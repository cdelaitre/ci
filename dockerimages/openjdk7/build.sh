#!/bin/bash
NAME=cdelaitre
TAG=openjdk7
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
