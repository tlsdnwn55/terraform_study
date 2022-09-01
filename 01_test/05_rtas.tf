resource "aws_route_table_association" "wjshin_rtas_weba" {
  subnet_id = aws_subnet.wjshin_weba.id
  route_table_id = aws_route_table.wjshin_rt.id
}

resource "aws_route_table_association" "wjshin_rtas_webc" {
  subnet_id = aws_subnet.wjshin_webc.id
  route_table_id = aws_route_table.wjshin_rt.id
}
