#!/bin/sh

#General dependencies
sudo add-apt-repository universe
sudo apt-get update -y

#remove libreoffice
sudo apt-get purge libreoffice* -y
#sudo apt autoremove -y

#OpenCV build dependencies
# Some general development libraries
sudo apt-get -y install build-essential make cmake cmake-curses-gui g++
# libav video input/output development libraries
sudo apt-get -y install libavformat-dev libavutil-dev libswscale-dev
# Video4Linux camera development libraries
sudo apt-get -y install libv4l-dev
# Eigen3 math development libraries
sudo apt-get -y install libeigen3-dev
# OpenGL development libraries (to allow creating graphical windows)
sudo apt-get -y install libglew-dev
# GTK development libraries (to allow creating graphical windows)
sudo apt-get -y install libgtk2.0-dev

sudo apt-get -y install libqt4-dev python-dev python-numpy python-py python-pytest

sudo apt-get install \
    libglew-dev \
    libtiff5-dev \
    zlib1g-dev \
    libjpeg-dev \
    libpng12-dev \
    libjasper-dev \
    libavcodec-dev \
    libavformat-dev \
    libavutil-dev \
    libpostproc-dev \
    libswscale-dev \
    libeigen3-dev \
    libtbb-dev \
    libgtk2.0-dev \
    pkg-config
