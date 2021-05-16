#!/usr/bin/bash

build_ws() {
    cd $1 && \
        catkin build
        cd ..
}

for f in *; do
    if [ -d "$f" ]; then
        build_ws $f
    fi
done