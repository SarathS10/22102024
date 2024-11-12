data "aws_ami" "ami19" {
  filter {
    name   = "sarath"
    values = ["al2023-ami-2023.6.20241031.0-kernel-6.1-x86_64"]
  }
}
data "aws_security_group" "secure" {
  name   = "SG"
  }


