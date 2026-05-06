#!/bin/bash

############################################################
# Open Source EDA Tool Installation Script
# Author : Suraj 
# Platform : Ubuntu 22.04 / 24.04 on WSL
############################################################

echo "=================================================="
echo " Installing Open Source EDA Tools "
echo "=================================================="

############################################################
# STEP 1 : Update System
############################################################

sudo apt update && sudo apt upgrade -y

############################################################
# STEP 2 : Create Working Directory
############################################################

mkdir -p ~/eda_tools
cd ~/eda_tools

############################################################
# STEP 3 : Install Prerequisites
############################################################

echo "Installing prerequisites..."

sudo apt install -y \
build-essential clang bison flex \
libreadline-dev gawk tcl-dev libffi-dev git \
graphviz xdot pkg-config python3 \
libboost-system-dev libboost-python-dev \
libboost-filesystem-dev zlib1g-dev \
make m4 tcsh csh libx11-dev gperf \
tcl8.6-dev tk8.6 tk8.6-dev \
libxpm-dev libxcb1 libcairo2 \
libxrender-dev libx11-xcb-dev \
libxaw7-dev freeglut3-dev \
automake yosys libtool adms

############################################################
# STEP 4 : Install xschem
############################################################

echo "Installing xschem..."

git clone https://github.com/StefanSchippers/xschem.git xschem-src

cd xschem-src

./configure
make
sudo make install

cd ..

############################################################
# STEP 5 : Install Magic VLSI
############################################################

echo "Installing Magic VLSI..."

git clone git://opencircuitdesign.com/magic

cd magic

./configure
make
sudo make install

cd ..

############################################################
# STEP 6 : Install ngspice
############################################################

echo "Installing ngspice..."

git clone https://git.code.sf.net/p/ngspice/ngspice ngspice_git

cd ngspice_git

mkdir release

./autogen.sh

cd release

../configure --with-x --enable-xspice \
--disable-debug --enable-cider \
--with-readline=yes --enable-openmp \
--enable-adms

make
sudo make install

cd ~/eda_tools

############################################################
# STEP 7 : Installation Complete
############################################################

echo "=================================================="
echo " EDA Tool Installation Completed Successfully "
echo "=================================================="

echo ""
echo "Installed Tools:"
echo " - xschem"
echo " - Magic VLSI"
echo " - ngspice"
echo " - yosys"
