#!/usr/bin/env bash

set -ex

export GOARCH=amd64
mkdir -p "_output/linux-$GOARCH/"
CGO_ENABLED=0 GOARCH="${arch}" go build -ldflags "-s -w" -o "_output/linux-$GOARCH/gops" github.com/google/gops

export GOARCH=arm64
export CC=aarch64-linux-gnu-gcc
mkdir -p "_output/linux-$GOARCH/"
CGO_ENABLED=0 GOARCH="${arch}" go build -ldflags "-s -w" -o "_output/linux-$GOARCH/gops" github.com/google/gops

export GOARCH=ppc64le
export CC=powerpc64le-linux-gnu-gcc
mkdir -p "_output/linux-$GOARCH/"
CGO_ENABLED=0 GOARCH="${arch}" go build -ldflags "-s -w" -o "_output/linux-$GOARCH/gops" github.com/google/gops

export GOARCH=mips64le
export CC=mips64el-linux-gnuabi64-gcc
mkdir -p "_output/linux-$GOARCH/"
CGO_ENABLED=0 GOARCH="${arch}" go build -ldflags "-s -w" -o "_output/linux-$GOARCH/gops" github.com/google/gops

export GOARCH=loong64
export CC=loongarch64-linux-gnu-gcc
mkdir -p "_output/linux-$GOARCH/"
CGO_ENABLED=0 GOARCH="${arch}" go build -ldflags "-s -w" -o "_output/linux-$GOARCH/gops" github.com/google/gops