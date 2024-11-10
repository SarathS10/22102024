resource "aws_instance" "app_server" {
  ami           = var.image_id
  instance_type = var.instance_type
  security_group_id = sg-0aa5e1dadf8190df3
  tags = {
    Name = "HelloEC2"
  }
}