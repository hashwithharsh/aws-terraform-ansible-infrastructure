terraform {
  backend "s3" {
    bucket       = "replace-with-your-state-bucket"
    key          = "prod/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
