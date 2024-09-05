# outputs.tf

# Output the ECS Cluster Name
output "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  value       = aws_ecs_cluster.medusa_cluster.name
}

# Output the ECS Service Name
output "ecs_service_name" {
  description = "The name of the ECS service"
  value       = aws_ecs_service.medusa_service.name
}

# Output the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.medusa_vpc.id
}

# Output the Public Subnets
output "public_subnets" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.medusa_subnet[*].id
}

# Output Security Group ID
output "security_group_id" {
  description = "The ID of the security group used by the ECS service"
  value       = aws_security_group.medusa_sg.id
}
