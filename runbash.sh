#!/bin/bash
docker run --rm -it \
       --device /dev/fuse \
       -v "$(pwd)/rcloneconf:/home/rcloner/:shared" \
       --entrypoint /bin/bash \
       andzuc/debian-rclone
