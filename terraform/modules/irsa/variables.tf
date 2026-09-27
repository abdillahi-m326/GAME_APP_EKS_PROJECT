variable "tags" {
  description = "Tags applied to resources"
  type        = map(string)
}

variable "oidc_provider_arn" {
  description = "ARN of the EKS OIDC provider"
  type        = string
}