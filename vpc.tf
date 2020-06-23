resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-vpc"
    Environment = var.environment_tag
  }
}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "terraform-igw"
    Environment = var.environment_tag
  }
}

resource "aws_subnet" "subnet_public" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.cidr_subnet
  map_public_ip_on_launch = "true"
  availability_zone = var.availability_zone
  tags = {
    Name = "terraform-subnet"
    Environment = var.environment_tag
  }
}



