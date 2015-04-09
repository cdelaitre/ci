#!/bin/bash
function docker-test {
  docker run -it $*
}
docker-test cdelaitre/openjdk:7 java -version
docker-test cdelaitre/openjdk:7 javac -version
