#run this command for file executable 
#chmod +x install_jenkins_java17_ubuntu24.sh

#run this cmd for running the script file
#./install_jenkins_java17_ubuntu24.sh

#!/bin/bash

# Jenkins Installation Script for Ubuntu 24.04 using Java 17

echo "🔄 Updating package index..."
sudo apt update

echo "🧰 Installing required dependencies..."
sudo apt install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates

echo "☕ Installing OpenJDK 17..."
sudo apt install -y openjdk-17-jdk

echo "✅ Java version:"
java -version

echo "🔑 Adding Jenkins GPG key..."
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo "📦 Adding Jenkins repository..."
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "🔄 Updating package index again..."
sudo apt update

echo "📥 Installing Jenkins..."
sudo apt install -y jenkins

echo "🚀 Starting and enabling Jenkins service..."
sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "🔐 Jenkins setup complete. Access it at: http://localhost:8080"
echo "🔑 Initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
