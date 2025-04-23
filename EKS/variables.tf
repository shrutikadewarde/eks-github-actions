variable "aws_region" {}
variable "env" {}
variable "cluster_name" {}
variable "cluster_version" {}
variable "is_eks_cluster_enabled" {}

# Networking
variable "vpc_cidr_block" {}
variable "vpc_name" {}
variable "vpc_id" {
  description = "ID of the existing VPC to use"
  type        = string
}
variable "igw_name" {}

variable "pub_subnet_count" {}
variable "pub_cidr_block" {
  type = list(string)
}
variable "pub_availability_zone" {
  type = list(string)
}
variable "pub_sub_name" {}

variable "pri_subnet_count" {}
variable "pri_cidr_block" {
  type = list(string)
}
variable "pri_availability_zone" {
  type = list(string)
}
variable "pri_sub_name" {}

variable "public_rt_name" {}
variable "private_rt_name" {}
variable "eip_name" {}
variable "ngw_name" {}
variable "eks_sg" {}

# Cluster Access
variable "endpoint_private_access" {}
variable "endpoint_public_access" {}

# Node groups
variable "ondemand_instance_types" {
  default = ["t3a.medium"]
}
variable "spot_instance_types" {}
variable "desired_capacity_on_demand" {}
variable "min_capacity_on_demand" {}
variable "max_capacity_on_demand" {}
variable "desired_capacity_spot" {}
variable "min_capacity_spot" {}
variable "max_capacity_spot" {}

# EKS Add-ons
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}

