resource "aws_vpc" "my_vpc" {
  cidr_block       = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "My VPC"
  }
}
resource "aws_internet_gateway" "my_vpc_igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "My VPC - Internet Gateway"
  }
}
resource "aws_route_table" "my_vpc_us_east_1a_public" {
    vpc_id = aws_vpc.my_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_vpc_igw.id
    }
    tags = {
        Name = "Public Subnet Route Table."
    }
}
resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Public Subnet_1"
  }
}
resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Public Subnet_2"
  }
}
resource "aws_route_table_association" "my_vpc_us_east_1a_public" {
    subnet_id = aws_subnet.public1.id
    route_table_id = aws_route_table.my_vpc_us_east_1a_public.id
}
resource "aws_route_table_association" "my_vpc_us_east_1a_public1" {
    subnet_id = aws_subnet.public2.id
    route_table_id = aws_route_table.my_vpc_us_east_1a_public.id
}
resource "aws_instance" "my_instance1" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.public1.id
  associate_public_ip_address = true
  tags = {
    Name = "My Instance_1Pub"
  }
}
resource "aws_instance" "my_instance2" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.public2.id
  associate_public_ip_address = true
  tags = {
    Name = "My Instance_2Pub"
  }
}
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Isolated Private Subnet"
  }
}
resource "aws_instance" "my_instance3" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.private.id
  tags = {
    Name = "My Instance_private"
  }
}
resource "aws_route_table" "my_vpc_us_east_1a_private" {
    vpc_id = aws_vpc.my_vpc.id
    tags = {
        Name = "Local Route Table for Isolated Private Subnet"
    }
}
resource "aws_route_table_association" "my_vpc_us_east_1a_private" {
    subnet_id = aws_subnet.private.id
    route_table_id = aws_route_table.my_vpc_us_east_1a_private.id
}

  
