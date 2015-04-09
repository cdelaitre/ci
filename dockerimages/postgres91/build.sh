#!/bin/bash
NAME=cdelaitre
TAG=postgres91
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
