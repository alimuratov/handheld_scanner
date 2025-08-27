#!/bin/bash
cd ..
cd /media/kodifly/Extreme\ SSD/17-cracks/

rosbag record /livox/lidar /livox/imu /left_camera/image --tcpnodelay --lz4 -b 4096


