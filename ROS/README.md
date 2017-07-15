# installROSTX1
Install Robot Operating System (ROS) on NVIDIA Jetson TX1

This script will install Robot Operating System (ROS) on the NVIDIA Jetson TX1 development kit.

Firstly run 

chmod +x updateRepositories.sh

./updateRepositories.sh

then 

./installROS.sh

ROS Desktop-Full will be installed (ROS, rqt, rviz, robot-generic libraries, 2D/3D simulators, navigation and 2D/3D perception )

You may modify the script to install:

Desktop Install: ROS, rqt, rviz, and robot-generic libraries

    sudo apt-get install ros-kinetic-desktop

ROS-Base: (Bare Bones) ROS package, build, and communication libraries. No GUI tools.

    sudo apt-get install ros-kinetic-ros-base


Note:

Tested on L4T 24.2.1 (Linux for Tegra r24.2.1), 15/07/2017



The script is based on the Ubuntu ARM install of ROS Kinetic: http://wiki.ros.org/kinetic/Installation/Ubuntu

Setup your CatkinWorkspace: http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment


Maintainer of ARM builds for ROS is http://answers.ros.org/users/1034/ahendrix/


