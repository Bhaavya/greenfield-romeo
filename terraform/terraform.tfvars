# ── VPC (region: us-east-1) ────────────────────────────────────────────
cidr_block   = "10.80.0.0/16"   # VPC CIDR block
aws_vpc_name = "vpc-romeo"       # VPC name tag
env_name     = "test"            # Environment tag

# ── Subnets ────────────────────────────────────────────────────────────
public_subnet_1_cidr       = "10.80.1.0/24"  # Public subnet 1 CIDR
public_subnet_2_cidr       = "10.80.2.0/24"  # Public subnet 2 CIDR
availability_zone_subnet_1 = "us-east-1e"    # AZ for public subnet 1
availability_zone_subnet_2 = "us-east-1f"    # AZ for public subnet 2
aws_name_subnet_1          = "vpc-romeo-public-1"  # Name tag for subnet 1
aws_name_subnet_2          = "vpc-romeo-public-2"  # Name tag for subnet 2

# ── Internet Gateway ───────────────────────────────────────────────────
aws_main_igw_name = "vpc-romeo-igw"  # Name tag for the main IGW
