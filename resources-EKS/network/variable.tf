variable "region" {
  type = string
  default = "us-east-1"
}

variable "cidr_block" {
  type    = string
  default = "192.168.0.0/16"
}

variable "tag" {
  type    = string
  default = "vpcproject"
}



variable "subnet" {
  type    = list(any)
  default = [
    "192.168.1.0/24",
    "192.168.2.0/24",
    "192.168.3.0/24",
    "192.168.4.0/24",
    "192.168.5.0/24",
    "192.168.6.0/24"
  ]
}

variable "azone" {
  type    = list(any)
  default = [
    "us-east-1a",
    "us-east-1b"
    ]
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





