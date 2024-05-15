vpc_name               = "nk_vpc"
vpc_cidr               = "192.168.0.0/16"
vpc_azs                = ["us-east-1a", "us-east-1b"]
vpc_public_cidr        = ["192.168.101.0/24", "192.168.102.0/24"]
vpc_private_cidr       = ["192.168.1.0/24", "192.168.2.0/24"]
vpc_database_cidr      = ["192.168.201.0/24", "192.168.202.0/24"]
vpc_db_subnet_group    = true
vpc_db_subnet_group_rt = true
vpc_enable_nat         = true
vpc_single_nat         = true