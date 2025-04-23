provider "aws" {
  region = var.aws-region
}

module "EKS" {
  source = "eks-github-actions/EKS/" # Adjust if your module is in another path

  # General settings
  aws-region               = var.aws-region
  env                      = var.env
  cluster-name             = var.cluster-name
  cluster-version          = "1.27"
  is-eks-cluster-enabled   = true

  # Networking
  vpc-cidr-block           = var.vpc-cidr-block
  vpc-name                 = var.vpc-name
  vpc_id                   = var.vpc_id
  igw-name                 = var.igw-name
  pub-subnet-count         = var.pub-subnet-count
  pub-cidr-block           = var.pub-cidr-block
  pub-availability-zone    = var.pub-availability-zone
  pub-sub-name             = var.pub-sub-name
  pri-subnet-count         = var.pri-subnet-count
  pri-cidr-block           = var.pri-cidr-block
  pri-availability-zone    = var.pri-availability-zone
  pri-sub-name             = var.pri-sub-name
  public-rt-name           = var.public-rt-name
  private-rt-name          = var.private-rt-name
  eip-name                 = var.eip-name
  ngw-name                 = var.ngw-name
  eks-sg                   = var.eks-sg

  # Cluster access
  endpoint-private-access  = var.endpoint-private-access
  endpoint-public-access   = var.endpoint-public-access

  # Node groups (optional defaults / can be overridden)
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

