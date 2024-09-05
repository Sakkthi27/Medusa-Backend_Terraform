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

# Optional: S3 Backend for storing Terraform state
# (skip if you're managing the state locally)
backend "s3" {
  bucket         = "your-terraform-state-bucket"
  key            = "terraform/medusa-ecs/terraform.tfstate"
  region         = var.aws_region
  encrypt        = true
  dynamodb_table = "terraform-lock"
}
