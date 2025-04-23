provider "aws" {
  region = var.aws_region
}

module "EKS" {
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
  pri_availability_zone    = var.pri_availability_zone
  pri_sub_name             = var.pri_sub_name
  public_rt_name           = var.public_rt_name
  private_rt_name          = var.private_rt_name
  eip_name                 = var.eip_name
  ngw_name                 = var.ngw_name
  eks_sg                   = var.eks_sg

  # Cluster access
  endpoint_private_access  = var.endpoint_private_access
  endpoint_public_access   = var.endpoint_public_access

  # Node groups
  ondemand_instance_types    = var.ondemand_instance_types
  spot_instance_types        = var.spot_instance_types
  desired_capacity_on_demand = var.desired_capacity_on_demand
  min_capacity_on_demand     = var.min_capacity_on_demand
  max_capacity_on_demand     = var.max_capacity_on_demand
  desired_capacity_spot      = var.desired_capacity_spot
  min_capacity_spot          = var.min_capacity_spot
  max_capacity_spot          = var.max_capacity_spot

  # EKS Add-ons
  addons = var.addons
}
