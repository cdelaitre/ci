#!/bin/bash
function docker-test {
  docker run -it $*
}
docker-test cdelaitre/centos-openjdk:8 java -version
docker-test cdelaitre/centos-openjdk:8 javac -version
