#!/bin/bash
docker run -v "$(pwd)":/project -w /project -it --privileged --platform linux/amd64 --rm myplanutils bash