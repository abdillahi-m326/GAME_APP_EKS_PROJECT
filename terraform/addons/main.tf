
data "terraform_remote_state" "infrastructure" {
  backend = "s3"

  config = {
    bucket = "eks-game-app-tfstate-32695"
    key    = "eks-game-app/infrastructure.tfstate"
    region = "us-east-1"
  }
}

module "eks_addons" {
  source = "../modules/eks_addons"

  cluster_name = data.terraform_remote_state.infrastructure.outputs.cluster_name

  cert_manager_role_arn = data.terraform_remote_state.infrastructure.outputs.cert_manager_role_arn

  external_dns_role_arn = data.terraform_remote_state.infrastructure.outputs.external_dns_role_arn

  aws_load_balancer_controller_role_arn = data.terraform_remote_state.infrastructure.outputs.aws_load_balancer_controller_role_arn
}
