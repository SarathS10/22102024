resource "aws_instance" "hello" {
  ami           = var.image_id
  instance_type = var.instance_type
  security_groups = "aws_security_group.sg-0aa5e1dadf8190df3.id"
  tags = {
    Name = "HelloEC2"
  }
}