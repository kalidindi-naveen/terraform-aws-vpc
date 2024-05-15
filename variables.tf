variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
  type        = string
}

variable "aws_profile" {
  default     = "naveen2"
  description = "AWS Profile"
  type        = string
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "VPC CIDR"
}

variable "vpc_name" {
  default     = "nk-vpc"
  description = "Name of the VPC"
  type        = string
}

variable "vpc_azs" {
  type        = list(string)
  description = "List of AZ's"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_cidr" {
  type        = list(string)
  description = "List of Public CIDR"
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_private_cidr" {
  type        = list(string)
  description = "List of Private CIDR"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_database_cidr" {
  type        = list(string)
  description = "List of Database CIDR"
  default     = ["10.0.201.0/24", "10.0.202.0/24"]
}

variable "vpc_db_subnet_group" {
  default     = false
  description = "VPC DB Subnet Group"
  type        = bool
}

variable "vpc_db_subnet_group_rt" {
  default     = false
  description = "VPC DB Subnet Group Route Table"
  type        = bool
}

variable "vpc_enable_nat" {
  default     = false
  description = "VPC Enable NAT"
  type        = bool
}

variable "vpc_single_nat" {
  default     = false
  description = "VPC Single NAT"
  type        = bool
}


variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}

# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "SAP"
}

variable "owner" {
  description = "Owner of VPC"
  default     = "NK"
  type        = string
}