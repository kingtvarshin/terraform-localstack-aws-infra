variable "assume_role_policy" {
  description = "The assume role policy for the IAM role."
  type        = string
}

variable "iam_role_name" {
  description = "The name of the IAM role."
  type        = string
  default     = "test_role"
}