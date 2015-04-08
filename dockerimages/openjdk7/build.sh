#!/bin/bash
docker build --rm=true -t "cdelaitre/openjdk7" . |& tee build.log
