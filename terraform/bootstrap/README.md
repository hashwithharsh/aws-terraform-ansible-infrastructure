# Terraform state bucket bootstrap

This small configuration creates the S3 bucket used by the main Terraform
environments for remote state.

I keep this separate because the backend bucket has to exist before Terraform
can use it as its backend.

## What it enables

- S3 remote state
- S3 versioning for recovery
- Server-side encryption
- Public access blocking
- Bucket owner enforced object ownership
- S3-native Terraform lock file support

## First setup

```bash
cp terraform.tfvars.example terraform.tfvars
# edit terraform.tfvars with a unique bucket name

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

After the bucket exists, configure the environment backend using the examples
under `../backend/`.

Do not commit `terraform.tfvars` or state files.
