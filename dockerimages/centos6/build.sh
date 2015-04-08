#!/bin/bash
docker build --rm=true -t "cdelaitre/centos6" . |& tee build.log
