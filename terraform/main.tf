module "vpc" {
  source = "./modules/vpc"
  app_name = local.application_name
}

module "alb" {
  source = "./modules/alb"
  subnet_ids = module.vpc.public_subnet_ids
  target_group_arn = module.targetgroup.target_group_arn
  alb_security_group_id = module.securitygroup.alb_sg_id
}

module "eks" {
  source = "./modules/eks"
  cluster_name = local.name
  eks_cluster_role_arn = module.iam.eks_cluster_role_arn
  eks_cluster_role_policy_id = module.iam.eks_cluster_role_policy_id
  eks_node_role_arn = module.iam.eks_node_role_arn
  eks_node_role_policy_id = module.iam.eks_node_role_policy_id
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  vpc_id      = module.vpc.vpc_id
  tags = local.tags
}

module "iam" {
  source = "./modules/iam"
  
}

module "irsa" {
  source = "./modules/irsa"
  tags = local.tags
  
}

module "securitygroup" {
  source = "./modules/securitygroup"
  vpc_id      = module.vpc.vpc_id
}

module "targetgroup" {
  source = "./modules/targetgroup"
  vpc_id      = module.vpc.vpc_id

}


