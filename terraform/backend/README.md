# Terraform S3 backend

The dev and prod environments use an S3 backend for remote Terraform state.
The backend bucket is created first with the configuration under
`terraform/bootstrap/`.

## State locking

This project uses Terraform's native S3 lock file support with
`use_lockfile = true`. Terraform creates a `.tflock` object next to the state
while an operation is running. This helps prevent two Terraform runs from
changing the same state at the same time.

The state bucket also has versioning enabled so an older state version can be
recovered if needed.

## First-time setup

1. Create the state bucket with `terraform/bootstrap/`.
2. Put the real bucket name into a local backend configuration file.
3. Run `terraform init` inside the selected environment.
4. Review `terraform plan` before applying changes.

Do not commit real backend bucket names, state files, credentials, or local
variable files containing secrets.
