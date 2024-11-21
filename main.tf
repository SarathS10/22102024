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
  instance_type = var.instance_type
  vpc_security_group_ids =[module.security-group.security_group_id]
  subnet_id = "subnet-02b4f9d5ee1df9882"
  tags ={
    Name = "sarath"
  }
  }
 
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.15.0"
  cidr = "10.0.0.0/16"
  private_subnets = ["10.0.1.0/24"]
  azs = ["us-east-2a"]

  tags={
    Name = "sub"
  }
  }

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.2.0"
  description = "management"
  vpc_id = module.vpc.vpc_id
  name = "Nan"
}