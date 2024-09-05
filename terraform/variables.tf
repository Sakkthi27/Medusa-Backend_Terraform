# variables.tf

# AWS region where resources will be deployed
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"  # Change this to your preferred region
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Medusa Docker image to deploy
variable "medusa_image" {
  description = "Docker image for the Medusa backend"
  type        = string
  default     = "your-ecr-repo-uri/medusa-backend:latest"  # Replace with your ECR URI
}

# Medusa container port
variable "medusa_container_port" {
  description = "Port that the Medusa container will expose"
  type        = number
  default     = 9000  # Default Medusa port
}
