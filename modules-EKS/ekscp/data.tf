data "aws_vpc" "vpcgeolocation" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-alpha-vpc"]
  }
}

data "aws_subnet" "public01" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-alpha-subnetweb1a"]
  }
}

data "aws_subnet" "public02" {
  filter {
    name   = "tag:Name"
    values = ["2021-dev-alpha-subnetweb1b"]
  }
}

