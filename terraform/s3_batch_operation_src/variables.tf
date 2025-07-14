variable "iam_role_name" {
  description = "The name of the IAM role for S3 Batch Operations"
  type        = string
  default     = "s3_batch_restore_role"
}

variable "aws_access_key" {
  default = "test"
}

variable "aws_secret_key" {
  default = "test"
}

variable "region" {
  default = "us-east-1"
}
