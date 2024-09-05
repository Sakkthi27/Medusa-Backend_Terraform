# main.tf

provider "aws" {
  region = var.aws_region
}

# VPC, subnets, internet gateway, and route tables setup
module "network" {
  source = "./network.tf"
}

# ECS cluster, task definition, and Fargate service
module "ecs" {
  source = "./ecs.tf"
}

# Security Groups for ECS
module "security" {
  source = "./security.tf"
}

# Outputs for ECS Cluster and Service
output "ecs_cluster_name" {
  value = module.ecs.ecs_cluster_name
}

output "ecs_service_name" {
  value = module.ecs.ecs_service_name
}
