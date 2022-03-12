FROM alpine:latest

LABEL maintainer="John Simoes" \
      description="Basic C++ for CircleCi repo." \
      version="0.1.0"

RUN apk update
RUN apk upgrade
RUN apk add --no-cache -f git cmake make g++
RUN apk add --no-cache -f vim bash gtest-dev openssl-dev nlohmann-json
RUN apk add --no-cache -f zlib-dev linux-headers curl-dev
RUN apk add --no-cache -f hiredis-dev redis fmt-dev

