# Terraform issue: Invalid subnet CIDR

## What I was doing
I was changing the VPC and subnet ranges while making the networking module reusable.

## What happened
Terraform rejected the configuration because a subnet range did not fit inside the VPC range.

## How I troubleshot it
I compared the VPC CIDR with each subnet CIDR and checked for overlap before changing anything else.

## Fix
I corrected the subnet range and ran `terraform fmt`, `terraform validate`, and `terraform plan` again.

## What I learned
The subnet must be inside the VPC address range and must not overlap another subnet.
