resource "aws_ami_from_instance" "wjshin_ami" {
    name = "wjshin-ami"
    source_instance_id = aws_instance.wjshin_ec2.id
}