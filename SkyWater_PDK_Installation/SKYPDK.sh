###########################################################
# STEP 5 : Install Yosys
###########################################################

sudo apt update
sudo apt install -y yosys

###########################################################
# STEP 6 : Install OpenPDK and SKY130 PDK
###########################################################

cd ~/eda_tools

echo "Cloning OpenPDK repository..."
git clone git://opencircuitdesign.com/open_pdks

cd open_pdks

echo "Configuring SKY130 PDK build..."

# By default installation path:
# /usr/local/share/pdk

./configure --enable-sky130-pdk

echo "Building OpenPDK..."
make

echo "Installing SKY130 PDK..."
sudo make install

###########################################################
# STEP 7 : Integrate SKY130 with Magic VLSI
###########################################################

sudo ln -sf /usr/local/share/pdk/sky130A/libs.tech/magic/* \
/usr/local/lib/magic/sys

###########################################################
# STEP 8 : Create SKY130 Xschem Test Project
###########################################################

cd ~

mkdir -p projects/test_xschem_sky130

cd projects/test_xschem_sky130

echo 'source /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc' > xschemrc

###########################################################
# STEP 9 : Launch Xschem
###########################################################

xschem

###########################################################
# STEP 10 : Install Xterm
###########################################################

sudo apt install -y xterm

###########################################################
# STEP 11 : Set Default Terminal
###########################################################

export TERMINAL=xterm

###########################################################
# Installation Completed Successfully
###########################################################
