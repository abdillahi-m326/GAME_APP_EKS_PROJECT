locals {
  name = "eks_game_app_cluster"
  domain = "abdillahimirie.click"

  tags = {
    project     = "eks-game-app"
    Environment = "dev"
  }
}