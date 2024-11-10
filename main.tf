resource "aws_instance" "hello" {
  ami           = var.image_id
  instance_type = var.instance_type
  security_groups = ["aws_security_group.Sarath_SG.name"]
  tags = {
    Name = "HelloEC2"
  }
}
