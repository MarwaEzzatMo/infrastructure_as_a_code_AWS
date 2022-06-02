resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.mtc_vpc.id

  tags = {
    Name = "public"
  }
}