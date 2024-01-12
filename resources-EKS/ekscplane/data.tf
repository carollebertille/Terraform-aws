data "aws_vpc" "vpcproject" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-EKS-vpc"]
  }
}

data "aws_subnet" "public01" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-EKS-subnetweb1a"]
  }
}

data "aws_subnet" "public02" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-EKS-subnetweb1b"]
  }
}

