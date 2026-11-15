locals {
  name             = "eks_game_app_cluster"
  application_name = "eks-game-app"
  domain           = "abdillahimirie.click"

  azs = [
    "us-east-1a",
    "us-east-1b"
  ]

  tags = {
    project     = "eks-game-app"
    Environment = "dev"
  }
}