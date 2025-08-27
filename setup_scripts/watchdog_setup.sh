#!/bin/bash

export LD_LIBRARY_PATH=/opt/ros/noetic/lib:/lib/aarch64-linux-gnu:/usr/local/lib:
source /home/kodifly/watchdog_ws/devel/setup.bash
roslaunch driver_watchdog watchdog.launch
