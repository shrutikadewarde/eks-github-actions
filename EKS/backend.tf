terraform {
  required_version = ">= 1.9.3, < 2.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-s3-bucket"
    region         = "ap-south-1"
    key            = "eks/terraform.tfstate"
    encrypt        = true
    use_lock_table = {
      table = "Lock-files"
  }
}

provider "aws" {
  region  = var.aws-region
}
