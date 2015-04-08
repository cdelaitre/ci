# [CI Continuous Integration](../README.md)

## dockerimages

###Requirements :
- docker (version 1.4.1 used here)
  - yum install docker-io (on centos6)
- tools:
  - wget (eventually set http_proxy in /etc/wgetrc)
  - tee

###Usage :
```
cd <image>
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
  -  postgres93

###Results :
```
$ docker images
REPOSITORY                      TAG                 IMAGE ID            CREATED              VIRTUAL SIZE
cdelaitre/postgres93            latest              580d5a0ba752        8 minutes ago        860.2 MB
cdelaitre/postgres91            latest              dfabe6ecd462        About a minute ago   858.2 MB
cdelaitre/tomcat7               latest              e408ee1e2026        About an hour ago    505.9 MB
cdelaitre/openjdk7              latest              3789e54c1d62        About an hour ago    478.6 MB
cdelaitre/centos6               latest              5eaa480be75a        About an hour ago    237.6 MB
centos                          centos6             f6808a3e4d9e        4 weeks ago          215.7 MB
```
