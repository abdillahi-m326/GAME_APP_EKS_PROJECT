
variable "tags" {
  description = "Global tags for all AWS resources"
  type        = map(string)

  default = {
    Environment = "dev"
    Project     = "eks-game-app"
    ManagedBy   = "Terraform"
  }
}

variable "name_prefix" {
  description = "Prefix used for naming AWS resources"
  type        = string
  default     = "eks-game-app"
}

variable "azs" {
  description = "Availability Zones for the VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}
