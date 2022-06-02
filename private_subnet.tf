resource "aws_subnet" "private_subnet_1" {
  vpc_id                  = aws_vpc.mtc_vpc.id
  cidr_block              = "10.123.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "private_1"
  }
}


resource "aws_subnet" "private_subnet_2" {
  vpc_id                  = aws_vpc.mtc_vpc.id
  cidr_block              = "10.123.4.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name = "private_2"
  }
}