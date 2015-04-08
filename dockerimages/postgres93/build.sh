#!/bin/bash
docker build --rm=true -t "cdelaitre/postgres93" . |& tee build.log
