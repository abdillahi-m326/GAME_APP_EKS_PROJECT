output "nginx_ingress_release_name" {
  value = helm_release.nginx_ingress.name
}

output "cert_manager_release_name" {
  value = helm_release.cert_manager.name
}

output "external_dns_release_name" {
  value = helm_release.external_dns.name
}

output "aws_load_balancer_controller_release_name" {
  value = helm_release.aws_load_balancer_controller.name
}