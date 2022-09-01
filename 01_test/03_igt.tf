resource "aws_internet_gateway" "wjshin_ig" {
  vpc_id = aws_vpc.wjshin_vpc.id
  tags = {
    "Name" = "wjshin-ig"
  }
}