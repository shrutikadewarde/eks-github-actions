# General Environment and AWS Settings
env                    = "dev"
aws_region             = "ap-south-1"
vpc_cidr_block         = "10.16.0.0/16"
vpc_name               = "vpc"
vpc_id                 = "vpc-06800d1ec9c8cdf73"
igw_name               = "igw"

# Public Subnet Settings
pub_subnet_count       = 3
pub_cidr_block         = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20"]
pub_availability_zone  = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
pub_sub_name           = "subnet-public"

# Private Subnet Settings
pri_subnet_count       = 3
pri_cidr_block         = ["10.16.128.0/20", "10.16.144.0/20", "10.16.160.0/20"]
pri_availability_zone  = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
pri_sub_name           = "subnet-private"

# Route Tables and Networking
public_rt_name         = "public-route-table"
private_rt_name        = "private-route-table"
eip_name               = "elasticip-ngw"
ngw_name               = "ngw"
eks_sg                 = "eks-sg"

# EKS Settings
is_eks_cluster_enabled = true
cluster_version        = "1.31"
cluster_name           = "eks-cluster"
endpoint_private_access = true
endpoint_public_access = false

# EC2 Instance Types (On-demand and Spot)
ondemand_instance_types    = ["t3a.medium"]
spot_instance_types        = [
  "c5a.large", "c5a.xlarge", "m5a.large", "m5a.xlarge", 
  "c5.large", "m5.large", "t3a.large", "t3a.xlarge", "t3a.medium"
]

# Node Group Scaling Config
desired_capacity_on_demand = 1
min_capacity_on_demand     = 1
max_capacity_on_demand     = 5
desired_capacity_spot      = 1
min_capacity_spot          = 1
max_capacity_spot          = 10

# EKS Addons
addons = [
  {
    name    = "vpc-cni",
    version = "v1.19.2-eksbuild.1"
  },
  {
    name    = "coredns",
    version = "v1.11.4-eksbuild.1"
  },
  {
    name    = "kube-proxy",
    version = "v1.31.3-eksbuild.2"
  },
  {
    name    = "aws-ebs-csi-driver",
    version = "v1.38.1-eksbuild.1"
  }
]

