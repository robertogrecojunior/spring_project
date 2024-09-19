resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "private" {
  count      = 2
  cidr_block = var.private_subnets[count.index]
  vpc_id     = aws_vpc.this.id
}

resource "aws_subnet" "public" {
  count      = 2
  cidr_block = var.public_subnets[count.index]
  vpc_id     = aws_vpc.this.id
}

