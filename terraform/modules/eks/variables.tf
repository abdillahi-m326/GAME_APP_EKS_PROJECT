variable "cluster_name" {
  type = string
}

variable "eks_cluster_role_arn" {
  type = string
}

variable "eks_cluster_role_policy_id" {
  type = string
}

variable "eks_node_role_arn" {
  type = string
}

variable "eks_node_role_policy_id" {
  type = string
}

variable "private_subnet_ids" {
  description = "List of PRIVATE subnet IDs for EKS"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "List of PUBLIC subnet IDs for EKS"
  type        = list(string)
}

variable "vpc_id" {
  type = string
}

variable "tags" {
  description = "Tags applied to resources"
  type        = map(string)
}
