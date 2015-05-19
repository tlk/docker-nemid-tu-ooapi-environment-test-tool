
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
make build
```

### Run the docker container
```
make run
```

This will start the test application and ask for input.

### Example

```
OOAPI environment tester
---------------------------

Set enviroment:

1 = OCESI_DANID_ENV_DEVELOPMENT
2 = OCESI_DANID_ENV_PROD
3 = OCESI_DANID_ENV_SYSTEMTEST
4 = OCESII_DANID_ENV_DEVELOPMENT
5 = OCESII_DANID_ENV_DEVELOPMENTTEST
6 = OCESII_DANID_ENV_EXTERNALTEST
7 = OCESII_DANID_ENV_INTERNALTEST
8 = OCESII_DANID_ENV_OPERATIONSTEST
9 = OCESII_DANID_ENV_PREPROD
10 = OCESII_DANID_ENV_PROD
> 9


Ping LDAP?
---------------------------
y/n[n]
>


Ping PID service?
---------------------------
y/n[n]
>


Ping OCSP service?
---------------------------
y/n[n]
>


Ping CRL service?
---------------------------
y/n[n]
>


---------------------------
```
