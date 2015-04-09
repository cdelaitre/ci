#!/bin/bash
NAME=cdelaitre
TAG=postgres93
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
