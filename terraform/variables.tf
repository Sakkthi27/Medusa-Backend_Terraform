variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "medusa_image" {
  description = "Docker image for Medusa backend"
}

variable "medusa_container_port" {
  default = 9000
}
