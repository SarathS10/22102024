resource "aws_instance" "welcome" {
  ami           = data.aws_ami.ami19.id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.Secure.id]
  tags = {
    Name = "HelloEC2"
  }
}

