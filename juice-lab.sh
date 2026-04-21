#!/bin/bash

echo "Updating system..."
sudo apt-get update -y && sudo apt-get upgrade -y

echo "Installing Docker..."
sudo apt-get install -y docker.io

echo "Starting Docker..."
sudo systemctl enable docker
sudo systemctl start docker

echo "Fix Docker Network..."
sudo mkdir -p /etc/docker

sudo tee /etc/docker/daemon.json > /dev/null <<EOF
{
"registry-mirrors": [
"https://mirror.gcr.io",
"https://docker.mirrors.ustc.edu.cn"
],
"dns": ["8.8.8.8", "8.8.4.4"]
}
EOF

sudo systemctl daemon-reexec
sudo systemctl restart docker

echo "Downloading Juice Shop..."
sudo docker pull bkimminich/juice-shop

echo "Installation Complete"
