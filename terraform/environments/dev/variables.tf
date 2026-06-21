variable "aws_region" { type = string }
variable "project_name" { type = string }
variable "ssh_cidr" { type = string }
variable "instance_type" { type = string default = "t3.micro" }

variable "vpc_cidr" { type = string }
variable "public_subnet_cidr" { type = string }
variable "private_subnet_cidr" { type = string }
