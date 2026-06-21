# Terraform issue: Backend bucket did not exist yet

## What I was trying to do

I wanted the dev environment to use an S3 backend for remote Terraform state.

## What happened

Terraform could not initialize the backend because the S3 bucket named in the
backend configuration had not been created yet.

## How I troubleshot it

I checked the bucket name in the backend configuration and then checked whether
the bucket existed in the selected AWS region.

## Fix

I kept the backend bucket creation separate under `terraform/bootstrap/`. I
created the bucket first, enabled versioning and encryption, and then initialized
the dev or prod environment with the real bucket name.

## What I learned

The backend has to exist before the main configuration can use it. Keeping the
bootstrap step separate also makes the first-time setup easier to understand.
