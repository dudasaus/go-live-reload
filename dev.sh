#!/bin/bash

# Fixes "error obtaining VCS status: exit status 128"
GOFLAGS="-buildvcs=false"

docker run -it --rm \
    -w $PWD \
    -e "air_wd=$PWD" \
    -e "GOFLAGS=$GOFLAGS" \
    -v $PWD:$PWD \
    -p 8080:8080 \
    --name "go-hot-reload" \
    cosmtrek/air
