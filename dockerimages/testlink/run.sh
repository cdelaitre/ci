#!/bin/bash
docker run -d -p 80:80 -p 3306:3306 --name testlink -e MYSQL_PASS="admin" adeo/testlink

#docker run -d -it -p 52010:80 i3p_ci/redmine bash
