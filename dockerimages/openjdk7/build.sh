#!/bin/bash
NAME=cdelaitre
TAG=openjdk:7
LOG=/tmp/build-${TAG}.log
docker build --rm=true -t "${NAME}/${TAG}" . |& tee ${LOG}
