variable "tags" {
  description = "Global tags for all resources"
  type        = map(string)
  default = {
    Environment = "Django-ecs-app"
    Owner       = "Django-app"
  }
}

variable "name_prefix" {
  description = "Prefix for naming all resources"
  type        = string
  default     = "Django-app"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/20", "10.0.2.0/20"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.3.0/20", "10.0.4.0/20"]
}