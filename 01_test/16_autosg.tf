resource "aws_placement_group" "wjshin_pg" {
  name = "wjshin-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "wjshin_autosg" {
  name = "wjshin-autosg"
  min_size = 1
  max_size = 10
  health_check_grace_period = 60
  health_check_type = "EC2"
  desired_capacity = 2
  force_delete = false
  launch_configuration = aws_launch_configuration.wjshin_autola.id
#   placement_group = aws_placement_group.wjshin_pg.id
  vpc_zone_identifier = [aws_subnet.wjshin_weba.id,aws_subnet.wjshin_webc.id]
}