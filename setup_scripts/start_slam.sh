#!/bin/bash

export LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu:$LD_LIBRARY_PATH
source ~/jetson_nano_ws/devel/setup.bash
roslaunch fast_livo mapping_avia_hh.launch
