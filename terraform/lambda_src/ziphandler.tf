resource "null_resource" "zip_lambdas" {
  for_each = var.lambda_functions

  provisioner "local-exec" {
    command = "powershell Compress-Archive -Path ${each.value.folder}/* -DestinationPath ${each.value.folder}/handler.zip -Force"
  }

  triggers = {
    always_run = timestamp()
  }
}
