terraform {
  backend "s3" {
    bucket       = "my-terraform-tfstate-eks-game-app"
    key          = "eks-game-app/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}