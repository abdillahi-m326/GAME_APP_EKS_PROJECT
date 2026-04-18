output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}

 output "eks_cluster_role_policy_id" {
  value = aws_iam_role_policy_attachment.eks_cluster_role_policy.id
}

output "eks_node_role_arn" {
  value = aws_iam_role.eks_node_role.arn
}

 output "eks_node_role_policy_id" {
  value = aws_iam_role_policy_attachment.eks_node_role_policy.id
}