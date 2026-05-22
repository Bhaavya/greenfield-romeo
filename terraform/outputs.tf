output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_1_id" {
  description = "The ID of public subnet 1"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  description = "The ID of public subnet 2"
  value       = aws_subnet.public_2.id
}

output "public_subnet_1_cidr" {
  description = "The CIDR block of public subnet 1"
  value       = aws_subnet.public_1.cidr_block
}

output "public_subnet_2_cidr" {
  description = "The CIDR block of public subnet 2"
  value       = aws_subnet.public_2.cidr_block
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "public_route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public.id
}
