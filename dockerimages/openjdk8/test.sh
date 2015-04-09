#!/bin/bash
function docker-test {
  docker run -it $*
}
docker-test cdelaitre/openjdk:8 java -version
docker-test cdelaitre/openjdk:8 javac -version
