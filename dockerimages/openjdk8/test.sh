#!/bin/bash
function docker-test {
  docker run -it $*
}
docker-test cdelaitre/openjdk8 java -version
docker-test cdelaitre/openjdk8 javac -version
