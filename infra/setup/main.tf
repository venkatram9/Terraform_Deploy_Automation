terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }
  backend "s3" {
    bucket         = "devops-app-tf-state-1"
    key            = "tf-state-setup"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "devops-tf-lock"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      conatct     = var.contact
      ManagedBy   = "Terrform/setup"
    }
  }
}
