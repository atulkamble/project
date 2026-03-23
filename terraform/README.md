# Amazon Linux EC2 Instance - Terraform

Basic Terraform configuration to launch an Amazon Linux 2023 EC2 instance.

## Prerequisites

- AWS CLI configured with credentials
- Terraform installed

## Usage

```bash
# Initialize
terraform init

# Deploy
terraform apply

# Destroy
terraform destroy
```

The instance will be created in us-east-1 region with t2.micro instance type.
