#run this command for giving an permission to .sh file 
#chmod +x install_tp_link_wifi.sh
#run this command for running the script
#./install_tp_link_wifi.sh


#!/bin/bash

# TP-Link RTL8812AU WiFi Dongle Installation Script for Ubuntu 24.04

echo "🧰 Installing required packages..."
sudo apt update
sudo apt install -y build-essential dkms git

echo "🌐 Cloning the driver repository..."
cd ~
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au

VERSION="5.6.4.2~20230501"
SRC_DIR="/usr/src/rtl8812au-$VERSION"

echo "📁 Copying source to DKMS directory..."
sudo cp -r . "$SRC_DIR"

echo "⚙️ Registering and building the driver with DKMS..."
sudo dkms add -m rtl8812au -v "$VERSION"
sudo dkms build -m rtl8812au -v "$VERSION"
sudo dkms install -m rtl8812au -v "$VERSION"

echo "📦 Loading the module..."
sudo modprobe 88XXau

echo "✅ Done! Reboot your system to apply changes."
