output "publisher_access_key" {
  value       = aws_iam_access_key.publisher.id
  description = "AWS_ACCESS_KEY to publish to ECR"
}

output "publisher_secret_key" {
  value       = aws_iam_access_key.publisher.secret
  description = "AWS_SECRET_ACCESS_KEY to upload to the ECR"
  sensitive   = true
}

output "ecr_url" {
  value       = aws_ecr_repository.repository.repository_url
  description = "The ECR repository URL"
}

output "ecr_repository_name" {
  value = aws_ecr_repository.repository.name
}

output "aws_region" {
  value = data.aws_region.current.name
}
