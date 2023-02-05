#!/usr/bin/env bash
apt update -y
apt install nginx -y
systemctl start nginx
systemctl enable nginx
echo "<h1> Hello from $(hostname -f)</h1>" > /var/www/html/index.html
