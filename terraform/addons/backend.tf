terraform {
  backend "s3" {
    bucket       = "eks-game-app-tfstate-32695"
    key          = "eks-game-app/addons.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}