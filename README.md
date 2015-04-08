# CI Continuous Integration

## dockerimages/
Contains scripts and files to build images based on centos6

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
