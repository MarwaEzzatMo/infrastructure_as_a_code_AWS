resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.mtc_vpc.id
  cidr_block              = var.private_subnets_1_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_1

  tags = {
    Name = "private_1"
  }
}


resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.mtc_vpc.id
  cidr_block              = var.private_subnets_2_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_2

  tags = {
    Name = "private_2"
  }
}