#!/bin/bash

export LD_LIBRARY_PATH=/opt/MVS/lib/aarch64:$LD_LIBRARY_PATH
source ~/jetson_nano_ws/devel/setup.bash
roslaunch mvs_ros_driver mvs_camera_trigger.launch

