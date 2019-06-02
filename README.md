
## Alpine with Chromium

This image allows you to run the chromium browser inside a docker container.

## What is included?
* alpine with X server (use `DEBUG=true` to turn on the vnc server)
* nodejs
* yarn
* chromium
* docker-cli (in case you want to run some automated tests against services running from another container, with ***/var/run/docker.sock*** mounted)

## Pull the image
```bash
docker push hex0cter/alpine-chrome:latest
```
Please visit [docker hub](https://hub.docker.com/repository/docker/hex0cter/alpine-chrome) for more details.

## Start a container
```bash
docker run -it --rm hex0cter/alpine-chrome chromium-browser --no-sandbox
```
The `sleep 10` above is to add a small delay to ensure that X server is up and running before starting the browser.

## Debug mode
```bash
docker run -it --rm -e DEBUG=true -p 5900:5900 hex0cter/alpine-chrome chromium-browser --no-sandbox
```
When **DEBUG=true**, the VNC server will be started, so you can access the container's GUI from any VNC viewer (port 5900).
