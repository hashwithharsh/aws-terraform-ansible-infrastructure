variable "aws_region" {
  type        = string
  description = "AWS region for the environment"
}

variable "project_name" {
  type        = string
  description = "Short name used in AWS resource names"
}

variable "ssh_cidr" {
  type        = string
  description = "CIDR allowed to connect to SSH"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}
