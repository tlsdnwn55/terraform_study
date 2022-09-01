resource "aws_instance" "wjshin_ec2" {
  ami = "ami-066d41d96fc160063"
  instance_type = "t2.micro"
  key_name = "wjshin_terraform"
  security_groups = [aws_security_group.wjshin_sg.id]
  availability_zone = "ap-northeast-2a"
  private_ip = "10.0.0.11"
  subnet_id = aws_subnet.wjshin_weba.id
  associate_public_ip_address = true
  user_data = file("./install.sh")
  tags = {
    "Name" = "web-1"
  }
}

output "public_ip" {
  value = aws_instance.wjshin_ec2.public_ip
}