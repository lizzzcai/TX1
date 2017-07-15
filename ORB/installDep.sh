#!/bin/sh

#General dependencies
sudo add-apt-repository universe
sudo apt-get update -y

#g2o
# optional
sudo apt-get install libsuitesparse-dev

sudo apt-get install libeigen3-dev
sudo apt-get install libsuitesparse-dev
sudo apt-get install libblas-dev
sudo apt-get install liblapack-dev 

# Pangolin
sudo apt-get install libglew-dev
sudo apt-get install libboost-dev libboost-thread-dev libboost-filesystem-dev

cd ~
git clone https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin
mkdir build
cd build
cmake ..
cmake --build .
