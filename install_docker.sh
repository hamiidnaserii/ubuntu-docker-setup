#!/bin/bash

# Exit on any error
set -e

# Update package index
echo "Updating package index..."
sudo apt-get update

# Install required packages for Docker
echo "Installing required packages for Docker..."
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker’s official GPG key
echo "Adding Docker’s official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the Docker stable repository
echo "Setting up the Docker stable repository..."
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the package index again
echo "Updating package index again..."
sudo apt-get update

# Install Docker CE
echo "Installing Docker CE..."
sudo apt-get install -y docker-ce

# Install Docker Compose
echo "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -Po '\"tag_name\": \"\K[^\"]*')" -o /usr/local/bin/docker-compose

# Apply executable permissions to the Docker Compose binary
echo "Applying executable permissions to the Docker Compose binary..."
sudo chmod +x /usr/local/bin/docker-compose

# Verify Docker installation
echo "Verifying Docker installation..."
sudo docker --version

# Verify Docker Compose installation
echo "Verifying Docker Compose installation..."
sudo docker-compose --version

echo "Docker and Docker Compose have been installed successfully."
