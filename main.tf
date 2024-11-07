resource "aws_vpc" "VPC" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "Sarath vpc"
  }
}
# instance of vpc
