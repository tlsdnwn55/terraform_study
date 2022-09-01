resource "aws_route_table" "wjshin_rt" {
  vpc_id = aws_vpc.wjshin_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.wjshin_ig.id
  }
  tags = {
    "Name" = "wjshin-rt"
  }
}