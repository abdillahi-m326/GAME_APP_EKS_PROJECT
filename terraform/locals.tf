locals {
  name = "eks_game_app_cluster"
  application_name = "eks-game-app"
  domain = "abdillahimirie.click"

  tags = {
    project     = "eks-game-app"
    Environment = "dev"
  }
}