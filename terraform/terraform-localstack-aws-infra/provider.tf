# This file is part of the terraform-localstack-aws-infra project.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.66.0"
    }
  }

  required_version = ">= 1.3.0"
}

# This provider configuration is for LocalStack, which simulates AWS services locally.
provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true
  access_key                  = "test"
  secret_key                  = "test"
  endpoints {
    s3 = "http://localhost:4566"
  }
}
