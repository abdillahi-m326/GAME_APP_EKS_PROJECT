output "state_bucket_name" {
  description = "Name of the Terraform state S3 bucket"
  value       = aws_s3_bucket.tf_state.bucket
}

output "aws_region" {
  description = "AWS region containing the bootstrap resources"
  value       = var.aws_region
}

output "ecr_repository_url" {
  description = "URL of the application ECR repository"
  value       = aws_ecr_repository.eks_game_app_repo.repository_url
}

output "ecr_repository_name" {
  description = "Name of the application ECR repository"
  value       = aws_ecr_repository.eks_game_app_repo.name
}