resource "aws_route_table" "rtpub" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id = aws_vpc.vpcgeolocation.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-rtpublic", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}

resource "aws_route_table" "rtapp1a" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id = aws_vpc.vpcgeolocation.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw1.id
  }

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-rtprivate1a", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}


resource "aws_route_table" "rtapp1b" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id = aws_vpc.vpcgeolocation.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw2.id
  }

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-rtprivate1b", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}



resource "aws_route_table" "rtdb1a" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id = aws_vpc.vpcgeolocation.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw1.id
  }

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-rtdb1a", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}

resource "aws_route_table" "rtdb1b" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id = aws_vpc.vpcgeolocation.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw2.id
  }

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-rtdb1b", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}
