resource "aws_route_table" "wjshin_natgwrt" {
    vpc_id = aws_vpc.wjshin_vpc.id
  
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.wjshin_natgw.id
        # nat_gateway_id = aws_nat_gateway.wjshin_natgw.id
    }

    tags = {
      "Name" = "wjshin-natgwrt"
    }
}