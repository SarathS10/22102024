output "vpc_id" {
  description = "VPC ID"
  value       = resource.aws_vpc.VPC.id
}
