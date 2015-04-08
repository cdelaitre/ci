#!/bin/bash
docker build --rm=true -t "ccdelaitre/postgres91" . |& tee build.log
