resource "aws_db_instance" "wjshin_db" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t2.micro"
  name = "wordpress"
  identifier = "mydb"
  username = "admin"
  password = "It12345!"
  parameter_group_name = "default.mysql8.0"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.wjshin_dbsg.id
  vpc_security_group_ids = [aws_security_group.wjshin_sg.id]
  skip_final_snapshot = true
  tags = {
    "Name" = "wjshin-mysql"
    }
}

resource "aws_db_subnet_group" "wjshin_dbsg" {
  name = "wjshin-dbsg"
  subnet_ids = [aws_subnet.wjshin_dba.id,aws_subnet.wjshin_dbc.id]
}