
output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_certificate_authority_data" {
  value = module.eks.cluster_certificate_authority_data
}

output "cert_manager_role_arn" {
  value = module.irsa.cert_manager_role_arn
}

output "external_dns_role_arn" {
  value = module.irsa.external_dns_role_arn
}

output "aws_load_balancer_controller_role_arn" {
  value = module.irsa.aws_load_balancer_controller_role_arn
}
