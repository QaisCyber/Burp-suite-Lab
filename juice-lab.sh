#!/bin/bash

echo "Updating system..."
sudo apt-get update -y && sudo apt-get upgrade -y

echo "Installing dependencies..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

echo "Installing Docker..."
sudo apt-get install -y docker.io

echo "Starting Docker..."
sudo systemctl enable docker
sudo systemctl start docker

echo "Fix Docker timeout issue..."
sudo mkdir -p /etc/docker

sudo tee /etc/docker/daemon.json > /dev/null <<EOF
{
"registry-mirrors": [
"https://mirror.gcr.io",
"https://registry.docker-cn.com",
"https://docker.mirrors.ustc.edu.cn"
],
"dns": ["8.8.8.8", "8.8.4.4"]
}
EOF

echo "Restarting Docker..."
sudo systemctl daemon-reexec
sudo systemctl restart docker

echo "Pulling Juice Shop..."
sudo docker pull bkimminich/juice-shop

echo "Removing old container if exists..."
sudo docker rm -f juice-shop 2>/dev/null

echo "Running Juice Shop..."
sudo docker run -d 
--name juice-shop 
-p 3000:3000 
--restart unless-stopped 
bkimminich/juice-shop

echo ""
echo "======================================="
echo "Juice Shop Installed Successfully"
echo "Open Browser:"
echo "http://localhost:3000"
echo "======================================="

sudo docker ps
