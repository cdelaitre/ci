#!/bin/bash
NAME=cdelaitre
TAG=postgres:93
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
