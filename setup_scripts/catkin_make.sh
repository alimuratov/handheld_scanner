#!/bin/bash

source ~/ws_livox/devel/setup.bash
cd ~/jetson_nano_ws/
export LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu:$LD_LIBRARY_PATH
catkin_make -DOpenCV_DIR=/usr/lib/aarch64-linux-gnu/cmake/opencv4
