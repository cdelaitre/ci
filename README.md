# CI Continuous Integration
## dockerimages
Contains scripts and files to automatically build docker images on docker hub

## dockerimages

###Requirements :
- docker (version 1.4.1 used here)
  - installed on centos6:
    - kernel >= 2.6.32-431 (version 2.6.32-504.12.2.el6.x86_64 used here)
    - add epel6 repo : yum install http://mirror.pnl.gov/epel/6/i386/epel-release-6-8.noarch.rpm
    - install docker : yum install docker-io
- tools:
  - wget (eventually set http_proxy in /etc/wgetrc)
  - tee

###Usage :
```
cd <image>
- image: centos6, openjdk7, tomcat7, postgres91, postgres93
./build.sh
```

###Image dependencies :
- centos:6
  - openjdk:7
    - tomcat:7
  - openjdk:8
    - tomcat:8
  -  postgres:91
  -  postgres:93

###Results :
```
$ docker images
REPOSITORY                      TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
cdelaitre/tomcat8               latest              cd69f14cee45        10 minutes ago      475.2 MB
cdelaitre/openjdk8              latest              5efa774dc5c9        13 minutes ago      449 MB
cdelaitre/postgres93            latest              580d5a0ba752        20 hours ago        860.2 MB
cdelaitre/postgres91            latest              dfabe6ecd462        21 hours ago        858.2 MB
cdelaitre/tomcat7               latest              e408ee1e2026        23 hours ago        505.9 MB
cdelaitre/openjdk7              latest              3789e54c1d62        23 hours ago        478.6 MB
cdelaitre/centos6               latest              5eaa480be75a        23 hours ago        237.6 MB
centos                          centos6             f6808a3e4d9e        4 weeks ago         215.7 MB
```
