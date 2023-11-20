provider "aws" {
    region = local.region
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
    bucket         = "geolocation-bucket"
    key            = "ekscplane/dev-geolocation/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "geolocation_table"
  }
}

locals {
  aws_region              = "us-east-1"
  control_plane_version   = "1.24"
  endpoint_private_access = false
  endpoint_public_access  = true

  common_tags = {
    "AssetID"       = "2021"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "dev"
    "Project"       = "geolocation"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }

}

module "ekscp" {
  source                  = "../../modules/ekscp"
  aws_region              = local.aws_region
  control_plane_version   = local.control_plane_version
  endpoint_private_access = local.endpoint_private_access
  endpoint_public_access  = local.endpoint_public_access
  common_tags             = local.common_tags
}