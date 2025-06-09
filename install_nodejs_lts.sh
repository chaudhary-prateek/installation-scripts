#Run this cmd for making file executable
#chmod +x install_nodejs_lts.sh|

#Run this cmd for running the script
#./install_nodejs_lts.sh

#!/bin/bash

# Node.js LTS Installation Script for Ubuntu 24.04

echo "🔄 Updating package index..."
sudo apt update

echo "📦 Installing curl..."
sudo apt install -y curl

echo "🌐 Adding NodeSource LTS repository..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

echo "📥 Installing Node.js and npm..."
sudo apt install -y nodejs

echo "✅ Node.js version:"
node -v

echo "✅ npm version:"
npm -v

echo "🎉 Node.js LTS installation complete!"
