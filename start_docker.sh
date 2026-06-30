#!/bin/bash

FORCE_REBUILD=false
IMAGE_NAME="myplanutils"

if [[ "$1" == "--rebuild" ]]; then
    FORCE_REBUILD=true
fi

if [[ "$FORCE_REBUILD" == "true" ]] || \
   ! docker image inspect "$IMAGE_NAME" >/dev/null 2>&1; then

    echo "Building image $IMAGE_NAME..."
    sudo docker build \
        --no-cache \
        --rm \
        --tag "$IMAGE_NAME" \
        . \
        --file Dockerfile
fi

docker run -v "$(pwd)":/project -w /project -it --privileged --platform linux/amd64 --rm myplanutils bash