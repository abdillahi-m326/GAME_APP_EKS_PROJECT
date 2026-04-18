resource "aws_eks_cluster" "eks_cluster" {
  name = "eks_cluster"
  role_arn = var.eks_cluster_role_arn
  version  = "1.31"
  
  
  access_config {
    authentication_mode = "API"
  }

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  depends_on = [
    var.eks_cluster_role_policy_id
  ]
}

resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "eks_node_group"
  node_role_arn   = var.eks_node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [
    var.eks_node_role_policy_id
  ]
}