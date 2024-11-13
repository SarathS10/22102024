resource "aws_instance" "welcome" {
  ami           = data.aws_ami.ami19.id
  instance_type = var.instance_type
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
  tags ={
    Name = "sarath"
  }
 
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.15.0"
  cidr = "10.0.0.0/16"
  }
module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.2.0"
  description = "management"
  vpc_id = "vpc-0f0721d04dd8e7b84"
  name = "Nan"
}