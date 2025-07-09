# terraform-localstack-aws-infra

Provision AWS infrastructure locally with Terraform and LocalStack — 100% open-source, zero AWS cost.

This project simulates a real-world AWS environment (S3, Lambda, IAM) entirely offline. Ideal for DevOps demos, infrastructure testing, and learning Infrastructure-as-Code without cloud billing.

---

## What It Sets Up

- S3 bucket (mocked via LocalStack) ***NOTE** : no real objects are created to be used, this is just an emulation to setup and test infra-as-code
- IAM role with trust policy for Lambda
- Python-based Lambda function
- CloudWatch Logs (simulated)
- GitHub Actions for CI (validate, format, plan)

---

## Tech Stack

- [Terraform](https://www.terraform.io/)
- [LocalStack](https://github.com/localstack/localstack)
- [GitHub Actions](https://docs.github.com/en/actions)
- Python 3.10+

---

## Requirements

- [Docker](https://www.docker.com/)
- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- Python 3.10+
- aws cli

---

## Getting Started

### 1. Start LocalStack -> [docker should be installed and running then run the below cmd]
```bash
docker run --rm -it -p 4566:4566 -p 4571:4571 localstack/localstack
```
keep this terminal open after it says ready

### 2. test that the localstack is ready to use by following cmd in new terminal

```bash
curl http://localhost:4566/_localstack/health
```
Check that key services like s3, lambda, and iam are marked "available" or "running".

### 3. create the desired terraform files and run the init, fmt, validate cmds

```bash
terraform init
terraform fmt
terraform validate
```

### 4. Plan and Apply

```bash
terraform plan
terraform apply -auto-approve
```

### 5. Check S3 Resources via AWS CLI
If not already configured:
```bash
aws configure --profile local
```
Use:
- Access Key: test
- Secret Key: test
- Region: us-east-1
- Output: json

Then check
```bash
aws --endpoint-url=http://localhost:4566 s3 ls --profile local
```
Expected output:
```bash
2025-07-10 04:23:37 my-local-bucket
```