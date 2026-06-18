#!/bin/bash

IMAGE_NAME="ros-humble"
PROJECT_NAME="plansys2_abissus_base"

if ! docker image inspect "$IMAGE_NAME" >/dev/null 2>&1; then
    echo "Image $IMAGE_NAME not found. Building..."
    sudo docker build --rm  --tag $IMAGE_NAME . --file Dockerfile
fi

docker run \
    -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
    -v "$(pwd)/../task5:/root/plansys2_ws/src/$PROJECT_NAME" \
    -v "$(pwd)/../task4/tfd:/root/plansys2_ws/src/$PROJECT_NAME/pddl" \
    --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
    --network=host \
    --name ubuntu_bash \
    --env DISPLAY \
    --rm -it "$IMAGE_NAME" bash