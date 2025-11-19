resource "aws_ecr_repository" "app" {
  name                 = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_lifecycle_policy" "my_policy" {
  repository = aws_ecr_repository.app.name

  policy = jsonencode({
    rules = [
      {
        rule_priority = 1
        description   = "Keep only 10 images"
        selection = {
          count_type      = "imageCountMoreThan"
          count_number    = 10
          tag_status      = "tagged"
          tag_prefix_list = ["prod"]
        }
        action = {
          type = "expire"
        }
      },
      {
        rule_priority = 2
        description   = "Expire untagged after 7 days"
        selection = {
          tag_status   = "untagged"
          count_type   = "sinceImagePushed"
          count_unit   = "days"
          count_number = 7
        }
        action = {
          type = "expire"
        }
      }

    ]
  })
}
