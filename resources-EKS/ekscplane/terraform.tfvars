aws_region              = "us-east-1"
endpoint_private_access = false
endpoint_public_access  = true

common_tags = {
  "AssetID"       = "2021"
  "AssetName"     = "Insfrastructure"
  "Teams"         = "DEL"
  "Environment"   = "dev"
  "Project"       = "EKS"
  "CreateBy"      = "Terraform"
  "cloudProvider" = "aws"
}