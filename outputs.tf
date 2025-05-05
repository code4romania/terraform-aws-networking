output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "vpc_cidr_block" {
  description = "The IPv4 CIDR block for the VPC."
  value       = aws_vpc.this.cidr_block
}

output "public_subnet_ids" {
  description = "Public subnet IDs."
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Private subnet IDs."
  value       = aws_subnet.private[*].id
}

output "public_cidr_blocks" {
  description = "Public CIDR blocks."
  value       = aws_subnet.public[*].cidr_block
}

output "private_cidr_blocks" {
  description = "Private CIDR blocks."
  value       = aws_subnet.private[*].cidr_block
}

output "public_availability_zones" {
  description = "Public Availability Zones."
  value       = aws_subnet.public[*].availability_zone
}

output "private_availability_zones" {
  description = "Private Availability Zones."
  value       = aws_subnet.private[*].availability_zone
}

output "public_route_table_id" {
  description = "Public Route Table ID."
  value       = aws_route_table.public.id
}

output "private_route_table_ids" {
  description = "Private Route Table ID."
  value       = aws_route_table.private.id
}
