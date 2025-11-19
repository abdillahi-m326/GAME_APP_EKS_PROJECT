output "ecr_url" {
  description = "The url of the ecr repo"
  value       = aws_ecr_repository.app.repository_url
}
