variable "project_name" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR range for the VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR range for the public subnet"
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR range for the private subnet"
}
