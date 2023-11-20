resource "aws_subnet" "web1a" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id                  = aws_vpc.vpcgeolocation.id
  cidr_block              = var.subnet[0]
  map_public_ip_on_launch = true
  availability_zone       = var.azone[0]
  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-subnetweb1a", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}
resource "aws_subnet" "web1b" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id                  = aws_vpc.vpcgeolocation.id
  cidr_block              = var.subnet[1]
  map_public_ip_on_launch = true
  availability_zone       = var.azone[1]
  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-subnetweb1b", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}

resource "aws_subnet" "app1a" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id            = aws_vpc.vpcgeolocation.id
  cidr_block        = var.subnet[2]
  availability_zone = var.azone[0]
  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-subnetapp1a", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}
resource "aws_subnet" "app1b" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id            = aws_vpc.vpcgeolocation.id
  cidr_block        = var.subnet[3]
  availability_zone = var.azone[1]
  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-subnetapp1b", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    }, 
  )
}

resource "aws_subnet" "db1a" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id            = aws_vpc.vpcgeolocation.id
  cidr_block        = var.subnet[4]
  availability_zone = var.azone[0]
  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-subnetdb1a", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}

resource "aws_subnet" "db1b" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id            = aws_vpc.vpcgeolocation.id
  cidr_block        = var.subnet[5]
  availability_zone = var.azone[1]
 tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-subnetdb1b", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}

