module "infra" {
  source        = "../.."
  aws_region    = var.aws_region
  project_name  = var.project_name
  ssh_cidr      = var.ssh_cidr
  instance_type = var.instance_type
}

output "instance_public_ip" { value = module.infra.instance_public_ip }
output "s3_bucket_name" { value = module.infra.s3_bucket_name }
