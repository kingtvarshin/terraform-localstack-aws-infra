resource "aws_lambda_function" "this" {
  function_name = var.function_name
  role          = var.lambda_role_arn
  handler       = var.handler
  runtime       = var.runtime
  filename      = var.source_path
  source_code_hash = filebase64sha256(var.source_path)

  environment {
    variables = var.environment_variables
  }
}
