#!/bin/bash
function docker-test {
  docker run -it $*
}
docker-test cdelaitre/postgres93 /usr/pgsql-9.3/bin/postgres --version
