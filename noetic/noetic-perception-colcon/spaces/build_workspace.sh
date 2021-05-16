#!/usr/bin/bash

build_ws() {
    cd $1 && \
        colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
    cd ..
}

for f in *; do
    if [ -d "$f" ]; then
        build_ws $f
    fi
done
