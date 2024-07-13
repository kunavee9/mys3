resource "aws_vpc" "main_vpc" {
    cidr_block = var.main_vpc_cidr
}

resource "aws_internet_gateway" "IGW" {
    vpc_id     = aws_vpc.main_vpc.id
}

resource "aws_subnet" "public_subnet_one" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "${var.public_subnet_one}"
}

resource "aws_subnet" "private_subnet_one" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "${var.private_subnet_one}"
}


