module "cert_manager_irsa" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts"
  version = "~> 6.8"

  name                       = "cert-manager-irsa"
  attach_cert_manager_policy = true

  oidc_providers = {
    eks = {
      provider_arn               = var.oidc_provider_arn
      namespace_service_accounts = ["cert-manager:cert-manager"]
    }
  }

  tags = var.tags
}

# Exteranal-DNS IRSA
module "external_dns_irsa" {
  source                     = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts"
  version                    = "~> 6.8"
  name                       = "external-dns-irsa"
  attach_external_dns_policy = true

  oidc_providers = {
    eks = {
      provider_arn               = var.oidc_provider_arn
      namespace_service_accounts = ["external-dns:external-dns"]
    }
  }

  tags = var.tags
}

# AWS Load Balancer Controller IRSA
module "aws_load_balancer_controller_irsa" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts"
  version = "~> 6.8"

  name = "aws-load-balancer-controller-irsa"

  attach_load_balancer_controller_policy = true

  oidc_providers = {
    eks = {
      provider_arn = var.oidc_provider_arn

      namespace_service_accounts = [
        "kube-system:aws-load-balancer-controller"
      ]
    }
  }

  tags = var.tags
}