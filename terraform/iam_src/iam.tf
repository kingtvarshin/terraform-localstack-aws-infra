module "iam_role" {
  source             = "../modules/iam"
  assume_role_policy = var.assume_role_policy
  iam_role_name      = var.iam_role_name
}