FROM alpine:latest

LABEL maintainer="John Simoes" \
      description="Basic C++ for CircleCi repo." \
      version="0.1.0"

RUN apk add --no-cache bash dpkg git vim
RUN apk add --no-cache clang build-base llvm-static llvm-dev clang-static clang-dev
RUN apk add --no-cache cmake

RUN ln -sf /usr/bin/clang /usr/bin/cc
RUN ln -sf /usr/bin/clang++ /usr/bin/c++

RUN ls -l /usr/bin/cc /usr/bin/c++

RUN cc --version
RUN c++ --version

