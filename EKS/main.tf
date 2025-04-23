provider "aws" {
  region = var.aws_region
}

module "EKS" 
  source = "../module"

  # General settings
  aws_region               = var.aws_region
  env                      = var.env
  cluster_name             = var.cluster_name
  cluster_version          = "1.27"
  is_eks_cluster_enabled   = true

  # Networking
  vpc_cidr_block           = var.vpc_cidr_block
  vpc_name                 = var.vpc_name
  vpc_id                   = var.vpc_id
  igw_name                 = var.igw_name
  pub_subnet_count         = var.pub_subnet_count
  pub_cidr_block           = var.pub_cidr_block
  pub_availability_zone    = var.pub_availability_zone
  pub_sub_name             = var.pub_sub_name
  pri_subnet_count         = var.pri_subnet_count
  pri_cidr_block           = var.pri_cidr_block

