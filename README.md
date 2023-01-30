# PHP Docker Build Helloworld Example

This is an example php application, which can be deployed to APPUiO using the following commands

## How to deploy

### CLI / oc Client

#### Create New OpenShift Project

```bash
oc new-project example-php-dockerfile-helloworld
```

#### Create Application and expose Service

```bash
oc new-app https://github.com/appuio/example-php-docker-helloworld.git --strategy=docker --name=appuio-php-docker-ex

oc expose service appuio-php-docker-ex
```

## Build and run the image

Build the image:

```bash
buildah build-using-dockerfile -t appuio/example-php-docker-helloworld:latest .
```

Run it locally with the following command. Beware that `--rmi` automatically removes the built image when the container stops, so you either have to rebuild it or remove the parameter from the command.

```bash
podman run --rm --rmi --interactive --publish 8080:8080 localhost/appuio/example-php-docker-helloworld
```
