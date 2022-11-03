variable "ecr_repo" {
  type        = string
  description = "Name of the ECR repo"
  default     = "simple-lambda-ecr"
}

variable "labmda_name" {
  type        = string
  description = "Name of the ECR repo"
  default     = "simple-lambda-ecr"
}

variable "s3_terraform_state_name" {
  type = string
  description = "Name of the S3 bucket used to store terrafrom state" 
  default = "aws-learn-terrafrom-state-storage"
}
