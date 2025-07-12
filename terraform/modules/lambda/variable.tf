variable "function_name" {}
variable "handler" {}
variable "runtime" {
  default = "python3.10"
}
variable "source_path" {}
variable "lambda_role_arn" {}
variable "environment_variables" {
  type    = map(string)
  default = {}
}
