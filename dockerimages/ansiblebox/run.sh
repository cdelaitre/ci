#!/bin/bash

# Load config
. config

docker run -d -it -p 52002:22 ${TAG}
