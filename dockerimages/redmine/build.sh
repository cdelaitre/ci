#!/bin/bash
NAME=cdelaitre
TAG=redmine
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
