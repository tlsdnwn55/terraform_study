resource "aws_subnet" "wjshin_weba" {
  vpc_id = aws_vpc.wjshin_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "wjshin-weba"
  }
}

resource "aws_subnet" "wjshin_webc" {
  vpc_id = aws_vpc.wjshin_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "wjshin-webc"
  }
}

resource "aws_subnet" "wjshin_wasa" {
  vpc_id = aws_vpc.wjshin_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "wjshin-wasa"
  }
}

resource "aws_subnet" "wjshin_wasc" {
  vpc_id = aws_vpc.wjshin_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "wjshin-wasc"
  }
}

resource "aws_subnet" "wjshin_dba" {
  vpc_id = aws_vpc.wjshin_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "wjshin-dba"
  }
}

resource "aws_subnet" "wjshin_dbc" {
  vpc_id = aws_vpc.wjshin_vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "wjshin-dbc"
  }
}