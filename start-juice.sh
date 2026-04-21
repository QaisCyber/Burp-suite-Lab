#!/bin/bash

echo "Stopping old container..."
sudo docker rm -f juice-shop 2>/dev/null

echo "Starting Juice Shop..."

sudo docker run 
--name juice-shop 
-p 3000:3000 
--restart unless-stopped 
bkimminich/juice-shop

echo "Juice Shop Running..."
