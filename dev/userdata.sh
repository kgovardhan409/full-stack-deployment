#!/bin/bash
yum update -y

# Install Apache
yum install -y httpd

# Start Apache
systemctl start httpd

# Enable on boot
systemctl enable httpd

# Create simple web page
echo "<h1>Welcome from Terraform EC2 🚀</h1>" > /var/www/html/index.html
