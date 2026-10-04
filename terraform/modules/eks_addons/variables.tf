variable "aws_load_balancer_controller_role_arn" {
  description = "IAM role ARN used by the AWS Load Balancer Controller"
  type        = string
}

variable "cert_manager_role_arn" {
  description = "IAM role ARN used by Cert Manager"
  type        = string
}

variable "external_dns_role_arn" {
  description = "IAM role ARN used by External DNS"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}