# IAM Role for S3 Batch Operations
resource "aws_iam_role" "s3_batch_restore_role" {
  name = var.iam_role_name

  assume_role_policy = file("${path.module}/iam_policy/assume_batch.json")

  tags = {
    Purpose = "S3BatchGlacierRestore"
  }
}

# IAM Policy Attachment for Batch Restore Permissions
resource "aws_iam_role_policy" "s3_batch_restore_policy" {
  name = "s3-batch-glacier-restore"
  role = aws_iam_role.s3_batch_restore_role.id

  policy = file("${path.module}/iam_policy/batch_restore_policy.json")
}