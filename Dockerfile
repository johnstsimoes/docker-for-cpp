FROM alpine:latest

LABEL maintainer="John Simoes" \
      description="Basic C++ for CircleCi repo." \
      version="0.1.0"

RUN apk add --no-cache -f git cmake make g++
RUN apk add --no-cache -f vim bash

RUN git clone https://github.com/google/googletest.git /googletest \
  && mkdir -p /googletest/build \
  && cd /googletest/build \
  && cmake .. && make && make install \
  && cd / && rm -rf /googletest

