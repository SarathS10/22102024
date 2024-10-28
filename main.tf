resource "aws_vpc" "VPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "Sarath"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = "vpc-0cbbf95b2ff5f575a"

  tags = {
    Name = "main"
  }
}
resource "aws_route_table" "example" {
    vpc_id = "vpc-0cbbf95b2ff5f575a"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-06b2beccfca006d1e"
    }
    tags = {
        Name = "Sarath_RT"
    }
}
resource "aws_subnet" "big" {
  vpc_id     = "vpc-0cbbf95b2ff5f575a"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Sarath_pubS_1"
  }
}
resource "aws_subnet" "small" {
  vpc_id     = "vpc-0cbbf95b2ff5f575a"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Sarath_pubS_2"
  }
}
resource "aws_subnet" "logic" {
  vpc_id     = "vpc-0cbbf95b2ff5f575a"
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Sarath_Private"
  }
}
resource "aws_route_table_association" "a" {
  subnet_id      = "subnet-0729db33d757804bf"
  route_table_id = "rtb-07a1a9aff726d91af"
}
resource "aws_route_table_association" "c" {
  subnet_id      = "subnet-07283665af9088b73"
  route_table_id = "rtb-07a1a9aff726d91af"
}
resource "aws_route_table_association" "b" {
  subnet_id      = "subnet-07bb4d45b9d15a8ff"
  route_table_id = "rtb-07a1a9aff726d91af"
}
resource "aws_instance" "my_instance3" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = "subnet-07bb4d45b9d15a8ff"
  tags = {
    Name = "My Instance_private"
  }
}
resource "aws_instance" "my_instance1" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = "subnet-07283665af9088b73"
  tags = {
    Name = "My Instance_1Pub"
  }
}
resource "aws_instance" "my_instance2" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = "subnet-0729db33d757804bf"
  tags = {
    Name = "My Instance_2Pub"
  }
}
