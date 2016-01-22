#!/bin/bash

# Load config
. config

# Variable
LOG=/tmp/build-${IMAGE}-${VERSION}.log

# Process
docker build --rm=true -t "${TAG}" . |& tee ${LOG}
if [ $? -eq 0 ]; then
  docker push "${TAG}"
fi
