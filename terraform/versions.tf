# versions.tf

terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Enable state management for shared workspaces (optional)
backend "s3" {
  bucket         = "your-terraform-state-bucket"
  key            = "terraform/medusa-ecs/terraform.tfstate"
  region         = var.aws_region
  encrypt        = true
  dynamodb_table = "terraform-lock"
}
