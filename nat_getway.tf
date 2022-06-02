resource "aws_nat_gateway" "my_getwat" {
  allocation_id = aws_eip.train.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "gw NAT"
  }

}


