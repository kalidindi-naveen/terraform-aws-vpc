module "nk-vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "5.5.2"
  name            = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr
  azs             = var.vpc_azs
  private_subnets = var.vpc_private_cidr
  public_subnets  = var.vpc_public_cidr
  # Database Subnets
  create_database_subnet_group       = var.vpc_db_subnet_group
  create_database_subnet_route_table = var.vpc_db_subnet_group_rt
  database_subnets                   = var.vpc_database_cidr
  # create_database_internet_gateway_route = true
  # create_database_nat_gateway_route = true

  enable_nat_gateway = var.vpc_enable_nat
  single_nat_gateway = var.vpc_single_nat

  enable_dns_hostnames = true
  enable_dns_support   = true

  public_subnet_tags = {
    Type = "public-subnet"
  }
  private_subnet_tags = {
    Type = "private-subnet"
  }

  database_subnet_tags = {
    Type = "database-subnet"
  }

  tags = {
    Owner              = var.owner,
    Environment        = var.environment,
    Bussiness_division = var.business_divsion
  }

  vpc_tags = {
    Name = "nk-vpc"
  }
}