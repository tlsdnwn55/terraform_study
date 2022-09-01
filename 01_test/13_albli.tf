resource "aws_lb_listener" "wjshin_albli" {
    load_balancer_arn = aws_lb.wjshin_lb.arn
    port = 80
    protocol = "HTTP"
    
    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.wjshin_albtg.arn
    }
}

resource "aws_lb_target_group_attachment" "wjshin_tgatt" {
  target_group_arn = aws_lb_target_group.wjshin_albtg.arn
  target_id = aws_instance.wjshin_ec2.id
  port = 80
}