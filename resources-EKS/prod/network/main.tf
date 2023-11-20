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



locals {
  cidr_block = "192.168.0.0/16"
  region = "us-east-1"

  subnet = [
    "192.168.1.0/24",
    "192.168.2.0/24",
    "192.168.3.0/24",
    "192.168.4.0/24",
    "192.168.5.0/24",
    "192.168.6.0/24"
  ]
  
  azone = [
    "us-east-1a",
    "us-east-1b"
    ]

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

terraform {
  backend "s3" {
    bucket         = "geolocation-buckets"
    key            = "network/dev-geolocation/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "geolocation_table"
  }
}
module "vpc" {
    source = "../../../modules/network"
    cidr_block = local.cidr_block
    region = local.region
    subnet = local.subnet
    azone = local.azone
    common_tags = local.common_tags
}