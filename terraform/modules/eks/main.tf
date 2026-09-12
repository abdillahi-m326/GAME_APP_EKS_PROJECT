module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = var.cluster_name
  kubernetes_version = "1.33"

  endpoint_public_access = true
  endpoint_public_access_cidrs = ["0.0.0.0/0"]

  enable_irsa = true

  vpc_id     = var.vpc_id
  control_plane_subnet_ids = var.public_subnet_ids
  subnet_ids = var.private_subnet_ids

   eks_managed_node_groups = {
    default = {
      disk_size      = 20
      instance_types = ["t3a.large", "t3.large"]
    }
  }

 tags = var.tags
}