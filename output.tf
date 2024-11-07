output "vpc_id" {
  description = "VPC of ID"
  value       = resource.aws_vpc.VPC.id
}
