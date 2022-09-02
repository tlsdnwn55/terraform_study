resource "aws_launch_configuration" "wjshin_autola" {
    name = "wjshin-autola"
    image_id = aws_ami_from_instance.wjshin_ami.id
    instance_type = "t2.micro"
    iam_instance_profile = "admin_role"
    security_groups = [aws_security_group.wjshin_sg.id]
    key_name = "wjshin"
    user_data = <<-EOF
        #! /bin/bash
        systemctl enable httpd
        systemctl start httpd
        EOF
}