module "irsa" {
  source = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts"
  version = "~> 6.8"
  
  name = "cert-manager-irsa"
  attach_cert_manager_policy = true

  oidc_providers = {
    eks = {
      provider_arn               = module.eks.cluster_oidc_issuer_arn
      namespace_service_accounts = ["cert-manager:cert-manager"]
    }
  }

tags = var.tags
}

module "Externalirsa" {
  source = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts"

  name = "cert-manager-irsa"
  attach_cert_manager_policy = true

  oidc_providers = {
    eks = {
      provider_arn               = "arn:aws:iam::012345678901:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/5C54DDF35ER19312844C7333374CC09D"
      namespace_service_accounts = ["cert-manager:cert-manager"]
    }
  }

tags = var.tags
}