output "vpc_id" {
  description = "VPC of ID"
  value       = resource.aws_vpc.VPC.id
}
output "gateway_Id" {
  description = "IGW of ID"
  value       = resource.aws_internet_gateway.gw.id
}
output "routtable_Id" {
  description = "RT of ID"
  value       = resource.aws_route_table.example.id
}
output "sub_Id" {
  description = "net of ID"
  value       = resource.aws_subnet.big.id
}
output "sub1_Id" {
  description = "net1 of ID"
  value       = resource.aws_subnet.small.id
}
output "sub2_Id" {
  description = "net2 of ID"
  value       = resource.aws_subnet.logic.id
}