#!/bin/bash
docker run -d -it -p 52010:80 -v /data/redmine:/var/lib/mysql i3p_ci/redmine bash
#docker run -d -it -p 52010:80 i3p_ci/redmine bash
