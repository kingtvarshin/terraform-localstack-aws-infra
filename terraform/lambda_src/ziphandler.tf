resource "null_resource" "zip_lambdas" {
  for_each = var.lambda_functions

  provisioner "local-exec" {
    command = "powershell Compress-Archive -Path lambda_src/${each.value.folder}/* -DestinationPath lambda_src/${each.value.folder}/handler.zip -Force"
  }

  triggers = {
    always_run = timestamp()
  }
}
