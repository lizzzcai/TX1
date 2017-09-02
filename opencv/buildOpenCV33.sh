#!/bin/bash
cd $HOME

sudo apt-add-repository universe
sudo apt-get update


sudo apt-get install -y \
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
    cmake \
    pkg-config

# Python 2.7
sudo apt-get install -y python-dev python-numpy python-py python-pytest -y
# Python 3
# sudo apt-get install python3-dev python3-numpy python3-py python3-pytest -y

git clone https://github.com/opencv/opencv.git
cd opencv
git checkout -b v3.3.0 3.3.0
# While still in the opencv directory:

# This is for the test data
cd $HOME
git clone https://github.com/opencv/opencv_extra.git
cd opencv_extra
git checkout -b v3.3.0 3.3.0

cd $HOME/opencv
mkdir build
cd build
# Jetson TX1 
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DBUILD_PNG=OFF \
    -DBUILD_TIFF=OFF \
    -DBUILD_TBB=OFF \
    -DBUILD_JPEG=OFF \
    -DBUILD_JASPER=OFF \
    -DBUILD_ZLIB=OFF \
    -DBUILD_EXAMPLES=ON \
    -DBUILD_opencv_java=OFF \
    -DBUILD_opencv_python2=ON \
    -DBUILD_opencv_python3=OFF \
    -DENABLE_PRECOMPILED_HEADERS=OFF \
    -DWITH_OPENCL=OFF \
    -DWITH_OPENMP=OFF \
    -DWITH_FFMPEG=ON \
    -DWITH_GSTREAMER=OFF \
    -DWITH_GSTREAMER_0_10=OFF \
    -DWITH_CUDA=ON \
    -DWITH_GTK=ON \
    -DWITH_VTK=OFF \
    -DWITH_TBB=ON \
    -DWITH_1394=OFF \
    -DWITH_OPENEXR=OFF \
    -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-8.0 \
    -DCUDA_ARCH_BIN=5.3 \
    -DCUDA_ARCH_PTX="" \
    -DINSTALL_C_EXAMPLES=ON \
    -DINSTALL_TESTS=OFF \
    -DOPENCV_TEST_DATA_PATH=../opencv_extra/testdata \
    ..
# cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local -DWITH_CUDA=ON -DCUDA_ARCH_BIN="5.3" -DCUDA_ARCH_PTX="" -DBUILD_TESTS=OFF -D WITH_QT=ON -DBUILD_PERF_TESTS=OFF ..


# Consider using all 4 cores; $ sudo nvpmodel -m 2 or $ sudo nvpmodel -m 0
sudo make -j4 
# make test
sudo make install
echo "# Use OpenCV and other custom-built libraries." >> ~/.bashrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/" >> ~/.bashrc
source ~/.bashrc
