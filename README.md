# PHP Docker Build Helloworld Example

This is an example php application, which can be deployed to APPUiO using the following commands

## How to deploy

### CLI / oc Client

#### Create New OpenShift Project
```
$ oc new-project example-php-dockerfile-helloworld
```

#### Create Application and expose Service
```
$ oc new-app https://github.com/appuio/example-php-docker-helloworld.git --strategy=docker --name=appuio-php-docker-example

$ oc expose service appuio-php-docker-example
```

