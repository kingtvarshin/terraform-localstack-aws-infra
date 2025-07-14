resource "aws_iam_role" "test_role" {
  name = var.iam_role_name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = file(var.assume_role_policy)

  tags = {
    tag-key = "tag-value"
  }
}