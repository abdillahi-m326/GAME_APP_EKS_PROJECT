variable "aws_region" {
  type        = string
  description = "AWS region for the bootstrap resources"
  default     = "us-east-1"
}

variable "state_bucket_name" {
  type        = string
  description = "Globally unique S3 bucket name for Terraform state"
}

variable "ecr_repo_name" {
  type        = string
  description = "ECR repository for the application"
  default     = "eks-game-app-repo"
}

variable "tags" {
  type        = map(string)
  description = "Tags for bootstrap resources"
  default     = {}
}