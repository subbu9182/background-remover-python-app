
resource "aws_vpc" "test_vpc" {
  cidr_block = var.cidr
  instance_tenancy = "default"

  tags = {
    Name = "VPC"
  }
}

resource "aws_internet_gateway" "test_igw" {
  vpc_id = aws_vpc.test_vpc.id

  tags ={
    Name = "IGW"
  }
}

resource "aws_subnet" "test_subnet" {
  vpc_id = aws_vpc.test_vpc.id
  cidr_block = var.cidr

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.test_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test_igw.id
  }

  tags = {
    Name = "route_table"
  }
}
