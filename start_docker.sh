#!/bin/bash

IMAGE_NAME="myplanutils"

if ! docker image inspect "$IMAGE_NAME" >/dev/null 2>&1; then
    echo "Image $IMAGE_NAME not found. Building..."
    sudo docker build --rm  --tag $IMAGE_NAME . --file Dockerfile
fi

docker run -v "$(pwd)":/project -w /project -it --privileged --platform linux/amd64 --rm myplanutils bash