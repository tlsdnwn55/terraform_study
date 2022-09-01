provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_key_pair" "wjshin_key" {
  key_name = "wjshin_terraform"
  public_key = file("../../Users/BTC-N08/.ssh/wjshin.pub")
}