#!/bin/bash
function docker-test {
  docker run -it $*
}
docker-test cdelaitre/postgres91 /usr/pgsql-9.1/bin/postgres --version
