resource "aws_vpc" "VPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "Sarath"
  }
}
resource "aws_internet_gateway" "IGW" {
  vpc_id ="vpc-0cbbf95b2ff5f575a"
  tags = {
    Name = "Internet Gateway"
  }
}
