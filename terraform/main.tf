resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name        = var.aws_vpc_name
    Environment = var.env_name
  }
}

resource "aws_subnet" "public_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = var.availability_zone_subnet_1

  tags = {
    Name        = var.aws_name_subnet_1
    Environment = var.env_name
  }
}

resource "aws_subnet" "public_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = var.availability_zone_subnet_2

  tags = {
    Name        = var.aws_name_subnet_2
    Environment = var.env_name
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = var.aws_main_igw_name
    Environment = var.env_name
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name        = "${var.aws_vpc_name}-public-rt"
    Environment = var.env_name
  }
}

resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public.id
}
