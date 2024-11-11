resource "aws_instance" "Ins1" {
  ami           = "ami-063d43db0594b521b"
  instance_type = var.instance_type
  tags = {
    Name = "HelloEC2"
  }
}

