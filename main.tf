resource "aws_vpc" "VPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "Sarath vpc"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_value

  tags = {
    Name = "main"
  }
}
resource "aws_route_table" "example" {
    vpc_id = var.vpc_value
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = var.gate_value
    }
    tags = {
        Name = "Sarath_RT"
    }
}

resource "aws_subnet" "big" {
  vpc_id     = var.vpc_value
  cidr_block = "10.0.1.0/24"
  availability_zone = var.find_loc
  tags = {
    Name = "Sarath_pubS_1"
  }
}
resource "aws_subnet" "small" {
  vpc_id     = var.vpc_value
  cidr_block = "10.0.2.0/24"
  availability_zone = var.find_loc
  tags = {
    Name = "Sarath_pubS_2"
  }
}
resource "aws_subnet" "logic" {
  vpc_id     = var.vpc_value
  cidr_block = "10.0.3.0/24"
  availability_zone = var.find_loc
  tags = {
    Name = "Sarath_Private"
  }
}
