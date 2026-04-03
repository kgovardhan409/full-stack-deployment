yum update -y

yum install -y httpd

systemctl start httpd

systemctl enable httpd

echo "<h1>Welcome from Terraform EC2 🚀</h1>" > /var/www/html/index.html
