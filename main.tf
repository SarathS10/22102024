resource "aws_vpc" "VPC" {
  cidr_block       = var.cidr no
  tags = {
    Name = "Sarath"
  }
}
