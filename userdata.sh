#!/bin/bash

# Update packages
sudo dnf update -y

# Install Docker
sudo dnf install -y docker

# Start Docker service
sudo service docker start

# Add ec2-user to the Docker group
sudo usermod -aG docker ec2-user

# Print a confirmation message
echo "Docker installed successfully!"

# Download Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Make Docker Compose executable
sudo chmod +x /usr/local/bin/docker-compose
