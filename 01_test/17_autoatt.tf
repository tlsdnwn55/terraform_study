resource "aws_autoscaling_attachment" "wjshin_autoatt" {
    autoscaling_group_name = aws_autoscaling_group.wjshin_autosg.id
    lb_target_group_arn = aws_lb_target_group.wjshin_albtg.arn
}