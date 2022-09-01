resource "aws_lb" "wjshin_lb" {
  name = "wjshin-lb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.wjshin_sg.id]
  subnets = [aws_subnet.wjshin_weba.id,aws_subnet.wjshin_webc.id]
  tags = {
    "Name" = "wjshin-lb"
  }
}

output "dns_name" {
  value = aws_lb.wjshin_lb.dns_name
}