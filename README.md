
# How to run the OOAPI environment test tool with Docker
This project documents how to get the NemID TU Example from
http://www.nets.eu/dk-da/Service/kundeservice/nemid-tu/NemID-tjenesteudbyderpakken-okt-2014/Pages/default.aspx#tab3
up and running using Docker and Tomcat on Mac OS X. Just ignore the boot2docker parts if you are not on Mac OS X.


### Install boot2docker
See https://docs.docker.com/installation/mac/

### Start boot2docker
```
boot2docker start
eval "$(boot2docker shellinit)"
```

### Build the docker image
```
git clone git@github.com:tlk/docker-nemid-tu-ooapi-environment-test-tool.git
cd docker-nemid-tu-ooapi-environment-test-tool
docker build -t nemid-tu-ooapi-environment-test-tool .
```

### Run the docker container
```
docker run -it nemid-tu-ooapi-environment-test-tool
```

