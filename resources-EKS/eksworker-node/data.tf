data "aws_vpc" "vpcproject" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-EKS-vpc"]
  }
}

data "aws_subnet" "private01" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-EKS-subnetapp1a"]
  }
}

data "aws_subnet" "private02" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-EKS-subnetapp1b"]
  }
}

data "aws_eks_cluster" "my_eks_cluster" {
   name = "2021-dev-EKS"
 }
