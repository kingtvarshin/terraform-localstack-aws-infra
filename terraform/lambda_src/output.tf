output "lambda_function_names" {
  value = {
    for k, mod in module.lambda_funcs :
    k => mod.lambda_function_name
  }
}
