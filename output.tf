output "ins_id" {
  description = "ins of ID"
  value       = resource.aws_instance.welcome.id
}

output "vpc_s" {
  description = "vpcof ID"
  value       = module.vpc.id
}