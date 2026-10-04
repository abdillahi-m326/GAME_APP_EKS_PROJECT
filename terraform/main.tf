module "vpc" {
  source = "./modules/vpc"
  app_name = local.application_name
}

module "eks" {
  source = "./modules/eks"
  cluster_name = local.name
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  vpc_id      = module.vpc.vpc_id
  tags = local.tags
}

module "irsa" {
  source = "./modules/irsa"
  tags = local.tags
  oidc_provider_arn = module.eks.oidc_provider_arn
}

module "eks_addons" {
  source = "./modules/eks_addons"
  cluster_name = local.name
  cert_manager_role_arn = module.irsa.cert_manager_role_arn
  external_dns_role_arn = module.irsa.external_dns_role_arn
  aws_load_balancer_controller_role_arn = module.irsa.aws_load_balancer_controller_role_arn
}