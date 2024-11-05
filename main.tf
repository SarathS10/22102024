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
