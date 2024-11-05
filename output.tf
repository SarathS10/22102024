output "vpc_id" {
  description = "VPC of ID"
  value       = resource.aws_vpc.VPC.id
}
output "gateway_Id" {
  description = "IGW of ID"
  value       = resource.aws_internet_gateway.gw.id
}