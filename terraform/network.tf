# network.tf

resource "aws_vpc" "medusa_vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "medusa_subnet" {
  count = 2
  vpc_id     = aws_vpc.medusa_vpc.id
  cidr_block = cidrsubnet(aws_vpc.medusa_vpc.cidr_block, 8, count.index)
}

resource "aws_internet_gateway" "medusa_igw" {
  vpc_id = aws_vpc.medusa_vpc.id
}

resource "aws_route_table" "medusa_route_table" {
  vpc_id = aws_vpc.medusa_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.medusa_igw.id
  }
}

resource "aws_route_table_association" "medusa_rt_association" {
  count          = 2
  subnet_id      = aws_subnet.medusa_subnet[count.index].id
  route_table_id = aws_route_table.medusa_route_table.id
}
