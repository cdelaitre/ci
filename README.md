# CI Continuous Integration

## dockerimages/
Contains scripts and files to build docker images from official centos/centos6

###Requirements :
- docker (used version 1.4.1)
- wget (with eventually correct http_proxy set in /etc/wgetrc)

###Usage :
```
cd dockerimages/<image>
./build.sh
```

###Notes :
centos6/Dockerfile
```
Replace __PROXY_HOST__ and __PROXY_PORT__ to set http_proxy env
```

###Image dependencies :
- centos6
  - openjdk7
    - tomcat7
  -  postgres91

###Result :
```
$ docker images
REPOSITORY                      TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
cdelaitre/tomcat7               latest              e408ee1e2026        About an hour ago   505.9 MB
cdelaitre/openjdk7              latest              3789e54c1d62        About an hour ago   478.6 MB
cdelaitre/centos6               latest              5eaa480be75a        About an hour ago   237.6 MB
centos                          centos6             f6808a3e4d9e        4 weeks ago         215.7 MB
```
