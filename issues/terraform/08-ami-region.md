# Terraform issue: AMI did not match the region

## What I was doing
I was making the EC2 AMI configurable through a variable.

## What happened
An AMI ID copied from another AWS region could not be used in the selected region.

## How I troubleshot it
I checked the selected AWS region and the AMI details before changing the EC2 configuration.

## Fix
I used an AMI ID valid for the target region and documented that AMIs are region-specific.

## What I learned
An AMI ID should not be treated as a universal value across AWS regions.
