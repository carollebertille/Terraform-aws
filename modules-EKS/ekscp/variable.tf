variable "aws_region" {
  type    = string
  default = "us-east-1"
}



variable "endpoint_private_access" {
  type    = bool
  default = false
}

variable "endpoint_public_access" {
  type    = bool
  default = true
}

variable "common_tags" {
  type = map(any)
  default = {
    "AssetID"       = "2021"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "dev"
    "Project"       = "geolocation"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }
}

