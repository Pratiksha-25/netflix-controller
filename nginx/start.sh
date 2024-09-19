#!/bin/bash
set -e

echo "Starting Nginx service..."
echo "--------------------------------"
sudo systemctl start nginx

echo "Enabling Nginx service..."
echo "--------------------------------"
sudo systemctl enable nginx

echo ""
echo "Nginx service status..."
echo "--------------------------------"
sudo systemctl status nginx
