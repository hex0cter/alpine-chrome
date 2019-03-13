FROM hex0cter/alpine-x:latest
LABEL maintainer="Daniel Han <hex0cter@gmail.com>"

RUN apk update \
  && apk add chromium nodejs yarn \
  && rm -rf /var/cache/apk/*
