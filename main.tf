resource "aws_vpc" "VPC" {
  cidr_block       = "var.cidr_no"
  tags = {
    Name = "Sarath"
  }
}
