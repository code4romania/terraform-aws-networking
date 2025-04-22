resource "aws_subnet" "public" {
  count                   = length(data.aws_availability_zones.current.names)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = element(var.public_subnets, count.index)
  availability_zone       = element(data.aws_availability_zones.current.names, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name   = "${var.namespace}-public"
    access = "public"
  }
}

resource "aws_subnet" "private" {
  count                   = length(data.aws_availability_zones.current.names)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = element(var.private_subnets, count.index)
  availability_zone       = element(data.aws_availability_zones.current.names, count.index)
  map_public_ip_on_launch = false

  tags = {
    Name   = "${var.namespace}-private"
    access = "private"
  }
}
