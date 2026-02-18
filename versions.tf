terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "express-service-tf-state-388370473778"
    region = "us-east-1"
    # key is set dynamically via -backend-config in workflow
  }
}
