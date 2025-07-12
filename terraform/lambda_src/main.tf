module "lambda_funcs" {
  depends_on = [null_resource.zip_lambdas]
  for_each   = var.lambda_functions

  source          = "../modules/lambda"
  function_name   = each.key
  source_path     = "${path.module}/${each.value.folder}/handler.zip"
  handler         = each.value.handler
  lambda_role_arn = aws_iam_role.lambda_exec.arn
}
