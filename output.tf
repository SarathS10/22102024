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
output "ins_Id" {
  description = "instance1 of ID"
  value       = resource.aws_instance.my_instance1.id
}
output "ins2_Id" {
  description = "instance2 of ID"
  value       = resource.aws_instance.my_instance2.id
}
output "ins3_Id" {
  description = "instance3 of ID"
  value       = resource.aws_instance.my_instance3.id
}
output "rta1_Id" {
  description = "routtable associate 3 of ID"
  value       = resource.aws_route_table_association.a.id
}
output "rta2_Id" {
  description = "routtable associate 2 of ID"
  value       = resource.aws_route_table_association.b.id
}
output "rta3_Id" {
  description = "routtable associate 1 of ID"
  value       = resource.aws_route_table_association.c.id
}