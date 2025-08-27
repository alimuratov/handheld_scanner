# Handheld Scanner Project
![Image](https://github.com/user-attachments/assets/52144c85-02dd-4625-91a6-308406e5df9d)

## Overview

This repository contains the master code for the handheld scanner project. It is organized into two separate ROS workspaces: the main workspace and the Livox workspace. This separation is necessary to avoid library conflicts between the `livox_ros_driver` and other drivers, such as the `mvs_ros_driver`. Besides that, it also includes a graphical user interface (GUI) to simplify the process of recording rosbags. The GUI provides a user-friendly way to start and stop recording, making it easier to collect data from the scanner.

## Workspace Structure

* **Main Workspace:** Contains the primary ROS packages for the handheld scanner, including the GUI and other essential nodes.
* **Livox Workspace:** Contains the `livox_ros_driver` for the Livox LiDAR sensor.

## RQT Graph
<img width="2523" height="1291" alt="Image" src="https://github.com/user-attachments/assets/4544b30c-d86b-4233-b2c9-ab2f868ca844" />

## If need to rebuild the main workspace with fast_livo2
To compile jetson_nano_ws with fast_livo2:
1. **Source the lidar driver in the other workspace:**
    ```bash
    source ~/ws_livox/devel/setup.bash
    ```
    
2. **Check if ws_livos is properly sourced:** 
    ```bash
    echo $CMAKE_PREFIX_PATH
    ```
    
3. **Go to your main workspace:** 
    ```bash
    cd jetson_nano_ws/
    ```
    
4. **Export Library required for FAST-LIVO2:** 
    ```bash
    export LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu:$LD_LIBRARY_PATH
    ```
    
5. **Build the workspace with specific opencv version:** 
    ```bash
    catkin_make -DOpenCV_DIR=/usr/lib/aarch64-linux-gnu/cmake/opencv4
    ```

## Time Synchronization
We use PTP and PPS pulse from the GPS to change the system clock to reflect true time and act as a master, so that the sensors are slaves and every device is on the same time axis. 
IMPORTANT: Copy all the files from /etc folder to 


## Future Improvements

There are still many opportunities for improvement in this project. For a list of potential enhancements and future work, please refer to the following document:
[Future Improvements](https://docs.google.com/document/d/1kc0jDXTHvJZl9womAMwVZ0JFm0FM8eKSd4X9cDq6aK4/edit?usp=drive_link)

