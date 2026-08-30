module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.25.0"

  cluster_name    = var.cluster_name
}