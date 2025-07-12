resource "aws_iam_role" "lambda_exec" {
  name               = "lambda_exec_role"
  assume_role_policy = file("${path.module}/iam_policy/lambda_exec.json")
}

resource "aws_iam_role_policy" "lambda_basic_policy" {
  name   = "lambda_basic_policy"
  role   = aws_iam_role.lambda_exec.id
  policy = file("${path.module}/iam_policy/lambda_basic.json")
}
