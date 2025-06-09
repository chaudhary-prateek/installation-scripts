#Make it executable:
#chmod +x install_docker_ubuntu24.sh

#Run the script:
#./install_docker_ubuntu24.sh
#!/bin/bash

# Docker Installation Script for Ubuntu 24.04

echo "🔄 Updating package index..."
sudo apt update

echo "🧼 Removing old Docker versions if any..."
sudo apt remove -y docker docker-engine docker.io containerd runc

echo "🔧 Installing required dependencies..."
sudo apt install -y ca-certificates curl gnupg lsb-release

echo "🔑 Adding Docker’s official GPG key..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "📦 Setting up the Docker repository..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "🔄 Updating package index again..."
sudo apt update

echo "🐳 Installing Docker Engine, CLI, Containerd..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "👤 Adding current user to docker group..."
sudo usermod -aG docker $USER

echo "✅ Docker installation completed."
echo "🚀 Please reboot your system or log out and back in to use Docker without sudo."
