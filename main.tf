resource "aws_instance" "welcome" {
  ami           = data.aws_ami.ami19.id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.secure.id]
  tags = {
    Name = "HelloEC2"
  }
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"
  ami = data.aws_ami.ami19.id
  availability_zone = var.location
  instance_type = var.instance_type
  instance_tags = var.poc
 
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.15.0"
  cidr = "10.0.0.0/16"
  default_vpc_name = null
  default_vpc_tags = sarath
}