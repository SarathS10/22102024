variable "image_id" {
  type = string
  default = "ami-06b21ccaeff8cd686"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "server_count" {
  type = number
  default = 3
}