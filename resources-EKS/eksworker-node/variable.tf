variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "common_tags" {
  type = map(any)
  default = {
    "AssetID"       = "2021"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "dev"
    "Project"       = "EKS"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }
}
