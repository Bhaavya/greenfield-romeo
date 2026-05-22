variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "aws_vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "env_name" {
  description = "The environment name (e.g. dev, test, prod)"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "The CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "The CIDR block for public subnet 2"
  type        = string
}

variable "availability_zone_subnet_1" {
  description = "The availability zone for public subnet 1 (e.g. us-east-1a)"
  type        = string
}

variable "availability_zone_subnet_2" {
  description = "The availability zone for public subnet 2 (e.g. us-east-1b)"
  type        = string
}

variable "aws_name_subnet_1" {
  description = "The name tag for public subnet 1"
  type        = string
}

variable "aws_name_subnet_2" {
  description = "The name tag for public subnet 2"
  type        = string
}

variable "aws_main_igw_name" {
  description = "The name tag for the main internet gateway"
  type        = string
}
