
## Docker image for Alpine with Chromium
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hex0cter/alpine-chrome/latest)](https://hub.docker.com/r/hex0cter/alpine-chrome)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/hex0cter/alpine-chrome)](https://hub.docker.com/r/hex0cter/alpine-chrome/builds)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/hex0cter/alpine-chrome)](https://hub.docker.com/r/hex0cter/alpine-chrome/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/hex0cter/alpine-chrome)](https://hub.docker.com/r/hex0cter/alpine-chrome)

This image allows you to run the ***Chromium*** browser inside a docker container. For Firefox please click [here](https://github.com/hex0cter/alpine-firefox).

## What is included?
* alpine with X server (use `DEBUG=true` to turn on the vnc server)
* nodejs
* yarn
* chromium
* docker-cli (in case you want to run some automated tests against services running from another container, with ***/var/run/docker.sock*** mounted)

## Pull the image
```bash
docker pull hex0cter/alpine-chrome:latest
```
Please visit [docker hub](https://hub.docker.com/repository/docker/hex0cter/alpine-chrome) for more details.

## Start a container
```bash
docker run -it --privileged --rm hex0cter/alpine-chrome chromium-browser
```
or
```bash
docker run -it --rm hex0cter/alpine-chrome chromium-browser --no-sandbox
```

## Debug mode
```bash
docker run -it --privileged --rm -e DEBUG=true -p 5900:5900 hex0cter/alpine-chrome chromium-browser
```
When **DEBUG=true**, the VNC server will be started, so you can access the container's GUI from any VNC viewer (port 5900).
