#!/bin/bash

echo "Stopping old container..."
sudo docker rm -f juice-shop 2>/dev/null

echo "Starting OWASP Juice Shop Lab..."
echo "-----------------------------------"
echo "Open Browser:"
echo "http://localhost:3000"
echo "-----------------------------------"

sudo docker run --name juice-shop -p 3000:3000 --restart unless-stopped bkimminich/juice-shop
