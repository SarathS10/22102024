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
resource "aws_route_table_association" "a" {
  subnet_id      = var.sub_value
  route_table_id = var.RT_value
}
resource "aws_route_table_association" "c" {
  subnet_id      = var.sub2_value
  route_table_id = var.RT_value
}
resource "aws_route_table_association" "b" {
  subnet_id      = var.sub3_value
  route_table_id = var.RT_value
}
resource "aws_instance" "my_instance3" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = var.sub3_value
  tags = {
    Name = "My Instance_private"
  }
}
resource "aws_instance" "my_instance1" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = var.sub2_value
  tags = {
    Name = "My Instance_1Pub"
  }
}
resource "aws_instance" "my_instance2" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = var.sub_value
  tags = {
    Name = "My Instance_2Pub"
  }
}
