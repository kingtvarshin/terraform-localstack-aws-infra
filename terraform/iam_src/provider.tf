terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.3.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region                      = var.region
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  endpoints {
    iam = "http://localhost:4566"
  }
}
