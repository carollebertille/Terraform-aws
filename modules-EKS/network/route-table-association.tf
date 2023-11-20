
resource "aws_route_table_association" "rtsub1a" {
  subnet_id      = aws_subnet.web1a.id
  route_table_id = aws_route_table.rtpub.id

}

resource "aws_route_table_association" "rtsub1b" {
  subnet_id      = aws_subnet.web1b.id
  route_table_id = aws_route_table.rtpub.id

}

resource "aws_route_table_association" "rtsubapp1a" {
  subnet_id      = aws_subnet.app1a.id
  route_table_id = aws_route_table.rtapp1a.id

}

resource "aws_route_table_association" "rtsubapp1b" {
  subnet_id      = aws_subnet.app1b.id
  route_table_id = aws_route_table.rtapp1b.id

}

resource "aws_route_table_association" "rtsubdb1a" {
  subnet_id      = aws_subnet.db1a.id
  route_table_id = aws_route_table.rtdb1a.id

}

resource "aws_route_table_association" "rtsubdb1b" {
  subnet_id      = aws_subnet.db1b.id
  route_table_id = aws_route_table.rtdb1b.id

}
