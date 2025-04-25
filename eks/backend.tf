terraform {
  required_version = ">= 1.9.3, < 2.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-s3-bucket-mum"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "Lock_Files"
  }
} 

provider "aws" {
  region  = var.aws-region
}

