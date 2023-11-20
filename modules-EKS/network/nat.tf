
resource "aws_nat_gateway" "ngw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.web1a.id

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-ngwa", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}

resource "aws_nat_gateway" "ngw2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.web1b.id

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-ngwb", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}
