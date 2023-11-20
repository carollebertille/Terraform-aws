provider "aws" {
  region = local.aws_region
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "geolocation-buckets"
    key            = "eksworker-node/dev-geolocation/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "geolocation_table"
  }
}

locals {
  aws_region = "us-east-1"

  common_tags = {
    "AssetID"       = "2021"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "dev"
    "Project"       = "geolocation"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }

  desired_size = 1
  min_size     = 1
  max_size     = 5

  ec2_ssh_key          = "terraform"
  ami_type             = "AL2_x86_64"
  capacity_type        = "ON_DEMAND"
  disk_size            = 20
  force_update_version = false
  instance_types       = ["t2.medium", "t2.micro"]
  label_name           = "dev"
  eks_version          = "1.24"
}

module "eksworker-node" {
  source       = "../../../modules/eksworker-node"
  desired_size = local.desired_size
  min_size     = local.min_size
  max_size     = local.max_size

  ec2_ssh_key          = local.ec2_ssh_key
  ami_type             = local.ami_type
  capacity_type        = local.capacity_type
  disk_size            = local.disk_size
  force_update_version = local.force_update_version
  instance_types       = local.instance_types
  label_name           = local.label_name
  eks_version          = local.eks_version
  common_tags          = local.common_tags
}