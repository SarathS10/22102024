resource "aws_vpc" "VPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "Sarath"
  }
}
resource "aws_internet_gateway" "IGW" {
  vpc_id ="var.vpc_IGW"
  tags = {
    Name = "Internet Gateway"
  }
}
