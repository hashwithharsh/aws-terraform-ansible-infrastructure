# AWS Infrastructure with Terraform & Ansible

This is my hands-on AWS infrastructure project built while learning Terraform
and Ansible. I used Terraform for the AWS resources and Ansible for the Linux
server configuration after provisioning.

## What I built

- VPC with public and private subnets
- Internet Gateway and NAT Gateway
- EC2 instance with restricted SSH access
- IAM role with limited S3 permissions
- Private S3 bucket with versioning
- Remote Terraform state in S3
- S3-native Terraform state locking with `use_lockfile = true`
- Dev and prod environment examples
- Reusable Ansible roles and day-to-day playbooks

## Project layout

```text
terraform/   AWS infrastructure and remote-state setup
ansible/     Linux configuration and application deployment
issues/      Terraform and Ansible troubleshooting notes
app/         small application used for deployment testing
```

## Terraform workflow

Create the remote state bucket first from `terraform/bootstrap/`. Then configure
the backend for the environment and run:

```bash
terraform init
terraform fmt -check
terraform validate
terraform plan
terraform apply
```

For a backend change, run `terraform init -reconfigure` only after checking what
state you are moving or reconnecting to.

## Ansible workflow

Move into `ansible/`, check connectivity, inspect the inventory, and use check
mode before making server changes:

```bash
ansible all -i inventory/dev.ini -m ping
ansible-inventory -i inventory/dev.ini --list
ansible-playbook -i inventory/dev.ini playbooks/site.yml --check --diff
ansible-playbook -i inventory/dev.ini playbooks/site.yml
```

See `ansible/README.md` for the larger command reference.

## Troubleshooting notes

I keep separate notes under `issues/terraform/` and `issues/ansible/`. Each note
records the symptom, checks I made, the actual cause, the fix, and what I learned.

## Important safety note

The repository contains example values only. I do not commit real AWS credentials,
private keys, Terraform state, or production inventory files.
