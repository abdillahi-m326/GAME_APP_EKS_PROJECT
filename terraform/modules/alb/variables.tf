variable "alb_security_group_id" {
  description = "Security group for ALB"
  type        = string
}

variable "target_group_arn" {
  description = "Target group ARN to forward traffic to"
  type        = string
}

variable "certificate_arn" {
  description = "ACM certificate ARN (optional for HTTPS)"
  type        = string
  default     = null
}

variable "subnet_ids" { type = list(string) }