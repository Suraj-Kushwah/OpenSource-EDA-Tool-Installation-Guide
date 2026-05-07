# OpenSource-EDA-Tool-Installation-Guide

Complete installation and setup guide for open-source EDA tools including Ngspice, Xschem, Yosys, Magic VLSI, and SKY130 PDK for ASIC and VLSI design flow on Ubuntu/WSL.

---

# Repository Structure

```text
OpenSource-EDA-Tool-Installation-Guide/
│
├── WSL_Setup/
│   └── SETUP.md
│
├── EDA_Tool_Installation/
│   └── tools.sh
│
├── SKY130_PDK_Installation/
│   └── SKYPDK.sh
│
└── README.md
```

---

# How to Use This Repository

## 1. WSL Setup

Follow the steps written in:

```text
WSL_Setup/SETUP.md
```

---

## 2. EDA Tool Installation

Copy the installation script into your Ubuntu/WSL system and run:

```bash
chmod +x tools.sh
./tools.sh
```

---

## 3. SKY130 PDK Installation

Copy the installation script into your Ubuntu/WSL system and run:

```bash
chmod +x SKYPDK.sh
./SKYPDK.sh
```

---

## 4. Verify Installation

Run:

```bash
xschem --version
magic --version
ngspice -v
yosys -V
```

---

Your open-source ASIC/VLSI design environment is now ready.

---

# Tools Included

* Xschem
* Ngspice
* Magic VLSI
* Yosys
* SKY130 PDK
* OpenPDK
* Xterm

---

# Create Aliases for Easy Access

Add the following aliases to `~/.bashrc`

```bash
# Magic VLSI Alias
echo "alias m='magic -d OGL -rcfile \$HOME/eda_tools/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.magicrc'" >> ~/.bashrc

# Xschem Alias
echo "alias xs='xschem --rcfile \$HOME/eda_tools/open_pdks/sky130/sky130A/libs.tech/xschem/xschemrc'" >> ~/.bashrc
```

Reload bashrc:

```bash
source ~/.bashrc
```

Usage:

```bash
# Launch Magic
m

# Launch Xschem
xs
```

---

# Recommended Workflow

```text
WSL Setup
    ↓
EDA Tool Installation
    ↓
SKY130 PDK Installation
    ↓
Start ASIC/VLSI Design
```

---

# Applications

This setup can be used for:

* Schematic Design
* SPICE Simulation
* Analog Circuit Design
* Digital Design
* Layout Design
* DRC and LVS
* RTL Synthesis
* ASIC Design Flow
* VLSI Learning and Research

---

# Author

Suraj

---

# License

This repository is intended for educational and learning purposes.
