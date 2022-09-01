resource "aws_route_table_association" "wjshin_natrtas_wasa" {
  subnet_id = aws_subnet.wjshin_wasa.id
  route_table_id = aws_route_table.wjshin_natgwrt.id
}

resource "aws_route_table_association" "wjshin_natrtas_wasc" {
  subnet_id = aws_subnet.wjshin_wasc.id
  route_table_id = aws_route_table.wjshin_natgwrt.id
}

resource "aws_route_table_association" "wjshin_natrtas_dba" {
  subnet_id = aws_subnet.wjshin_dba.id
  route_table_id = aws_route_table.wjshin_natgwrt.id
}

resource "aws_route_table_association" "wjshin_natrtas_dbc" {
  subnet_id = aws_subnet.wjshin_dbc.id
  route_table_id = aws_route_table.wjshin_natgwrt.id
}


