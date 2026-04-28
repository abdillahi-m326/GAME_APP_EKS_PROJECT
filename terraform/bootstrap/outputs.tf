output "state_bucket_name" { value = aws_s3_bucket.tf_state.bucket }
output "lock_table_name" { value = aws_dynamodb_table.tf_locks.name }
output "aws_region" { value = var.aws_region }

output "ecr_repository_url" {
  value = aws_ecr_repository.eks_app_repo.repository_url
}

output "ecr_repository_name" {
  value = aws_ecr_repository.eks_app_repo.name
}