module "vpc" {
  source       = "./modules/vpc"
  project_name = var.project_name
}

module "iam" {
  source       = "./modules/iam"
  project_name = var.project_name
}

module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
}

module "ec2" {
  source        = "./modules/ec2"
  project_name  = var.project_name
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id
  instance_role = module.iam.instance_profile_name
  bucket_arn    = module.s3.bucket_arn
  ssh_cidr      = var.ssh_cidr
  instance_type = var.instance_type
}
