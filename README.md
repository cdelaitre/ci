# CI Continuous Integration

## dockerimages/
Contains scripts and files to build images based on centos6

###Image dependencies :
- centos6
  - openjdk7
    - tomcat7
  -  postgres91

###Usage :
cd <image>
./build.sh

###Notes :
centos6/Dockerfile
Replace __PROXY_HOST__ and __PROXY_PORT__ to set http_proxy env
