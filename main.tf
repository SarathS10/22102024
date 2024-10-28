resource "aws_vpc" "VPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "Sarath"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = "var.vpc-main"

  tags = {
    Name = "main"
  }
}
resource "aws_route_table" "example" {
    vpc_id = "var.vpc-main"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "var.vpc-gateway"
    }
    tags = {
        Name = "Sarath_RT"
    }
}
resource "aws_subnet" "big" {
  vpc_id     = "var.vpc-main"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Sarath_pubS_1"
  }
}
resource "aws_subnet" "small" {
  vpc_id     = "var.vpc-main"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Sarath_pubS_2"
  }
}
resource "aws_subnet" "logic" {
  vpc_id     = "var.vpc-main"
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Sarath_Private"
  }
}
