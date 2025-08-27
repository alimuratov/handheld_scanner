#!/bin/bash

export LD_LIBRARY_PATH=/opt/ros/noetic/lib:/lib/aarch64-linux-gnu:/usr/local/lib:
source ~/ws_livox/devel/setup.bash
roslaunch livox_ros_driver livox_lidar_rviz.launch bd_list:="3JEDN5N00196551"

