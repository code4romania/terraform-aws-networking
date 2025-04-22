resource "aws_eip" "nat_gateway" {
  domain = "vpc"
  tags = {
    Name = "${var.namespace}-nat-gateway"
  }
}
