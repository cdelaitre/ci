#!/bin/bash
function docker-test {
  docker run -it $*
}
docker-test cdelaitre/openjdk7 java -version
docker-test cdelaitre/openjdk7 javac -version
