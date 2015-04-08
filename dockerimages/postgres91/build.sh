#!/bin/bash
docker build --rm=true -t "cdelaitre/postgres91" . |& tee build.log
