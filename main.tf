resource "aws_ecr_repository" "calculator" {
  name = "calculator-backend"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    env = "production"
  }
}

output "ecr_url" {
  value = aws_ecr_repository.calculator.repository_url
}
