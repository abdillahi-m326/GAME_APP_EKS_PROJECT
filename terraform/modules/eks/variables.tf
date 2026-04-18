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

variable "subnet_ids" {
  description = "List of PRIVATE subnet IDs for EKS"
  type        = list(string)
}
