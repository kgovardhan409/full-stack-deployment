data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
resource "aws_instance" "my_ec2_dev_instance" {
  instance_type = "t3.micro"
  ami           = data.aws_ami.amazon_linux.id
  subnet_id     = "subnet-044ba859d55c33e82"
  user_data     = file("userdata.sh")
  tags = {
    Name = "my_ec2_dev_instance"
  }



}
