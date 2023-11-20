data "aws_vpc" "houston-vpc" {
  filter {
    name   = "tag:Name"
    values = ["2560-dev-houston-vpc"]
  }
}

data "aws_subnet" "private01" {
  filter {
    name   = "tag:Name"
    values = ["2560-dev-houston-subnetapp1a"]
  }
}

data "aws_subnet" "private02" {
  filter {
    name   = "tag:Name"
    values = ["2560-dev-houston-subnetapp1b"]
  }
}

# data "aws_eks_cluster" "my_eks_cluster" {
#   name = "2526-dev-houston"
# }
