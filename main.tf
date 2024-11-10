resource "aws_instance" "hello" {
  ami           = var.image_id
  instance_type = var.instance_type
  security_groups = data.aws_security_groups.New 
  tags = {
    Name = "HelloEC2"
  }
}
