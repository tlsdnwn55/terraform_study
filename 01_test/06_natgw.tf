resource "aws_eip" "wjshin_natip" {
  vpc = true
}

resource "aws_nat_gateway" "wjshin_natgw" {
  allocation_id = aws_eip.wjshin_natip.id
  subnet_id = aws_subnet.wjshin_weba.id
  tags = {
    "Name" = "wjshin-natgw"
  }

  depends_on = [
    aws_internet_gateway.wjshin_ig
  ]
}