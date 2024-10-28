resource "aws_vpc" "VPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "Sarath"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id ="var.vpc_IGW"
  tags = {
    Name = "Internet Gateway"
  }
}
resource "aws_route_table" "example" {
    vpc_id = "var.vpc_IGW"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "var.vpc_RT"
    }
    tags = {
        Name = "Sarath_RT"
    }
}
resource "aws_subnet" "main" {
  vpc_id     = "vpc_IGW"
  cidr_block = "10.0.1.0/24"
  availability_zone = "access_1"
  tags = {
    Name = "Sarath_pubS_1"
  }
}
resource "aws_subnet" "smain" {
  vpc_id     = "vpc_IGW"
  cidr_block = "10.0.2.0/24"
  availability_zone = "access_1"
  tags = {
    Name = "Sarath_pubS_2"
  }
}
resource "aws_subnet" "mains" {
  vpc_id     = "vpc_IGW"
  cidr_block = "10.0.3.0/24"
  availability_zone = "access_1"
  tags = {
    Name = "Sarath_Private"
  }
}
