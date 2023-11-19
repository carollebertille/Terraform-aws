resource "aws_eip" "nat1" {
  vpc = true
  tags = {
    Name = "nwg1"
  }
}

resource "aws_eip" "nat2" {
  vpc = true

  tags = {
    Name = "nwg2"
  }
}
