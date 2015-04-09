#!/bin/bash
function docker-test {
  docker run -it $*
}
docker-test cdelaitre/centos-openjdk:7 java -version
docker-test cdelaitre/centos-openjdk:7 javac -version
