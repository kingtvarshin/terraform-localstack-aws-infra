variable "aws_access_key" {
  description = "AWS access key for authentication."
  type        = string
  default     = "test"
}
variable "aws_secret_key" {
  description = "AWS secret key for authentication."
  type        = string
  default     = "test"
}
variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "assume_role_policy" {
  description = "The assume role policy for the IAM role."
  type        = string
  default     = "iam_role_policy/batch_operation_policy.json"
}

variable "iam_role_name" {
  description = "The name of the IAM role."
  type        = string
  default     = "test_role"
}
