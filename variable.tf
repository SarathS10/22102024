variable "image_id" {
  type = string
  default = "ami-06b21ccaeff8cd686"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "vpc_value" {
  type = string
  default = "vpc-09dc513453d696629"
}
variable "gate_value" {
  type = string
  default = "igw-00a16c76d3fe3c570"
}
variable "find_loc" {
  type = string
  default = "us-east-1a"
}
