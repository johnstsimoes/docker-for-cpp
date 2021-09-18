FROM alpine:latest

LABEL maintainer="John Simoes" \
      description="Basic C++ for CircleCi repo." \
      version="0.1.0"

RUN apk add --no-cache -f git cmake make g++
RUN apk add --no-cache -f vim bash gtest-dev openssl-dev nlohmann-json
RUN apk add --no-cache -f zlib-dev linux-headers
RUN apk add --no-cache -f hiredis-dev redis

RUN git clone https://github.com/libcpr/cpr.git /cpr \
  && mkdir -p /cpr/build && cd /cpr/build \
  && cmake .. \
  && make \
  && make install

RUN git clone https://github.com/fmtlib/fmt.git /fmt \
  && mkdir -p /fmt/build && cd /fmt/build \
  && cmake .. \
  && make \
  && make install

