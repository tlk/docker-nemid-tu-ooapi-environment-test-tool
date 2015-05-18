
# OOAPI environment test tool with Docker
This project documents how to get the OOAPI environment test tool
up and running using Docker. Just ignore the boot2docker parts if you are not on Mac OS X.


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

