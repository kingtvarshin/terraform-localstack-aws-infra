variable "lambda_functions" {
  type = map(object({
    folder  = string
    handler = string
  }))
}
