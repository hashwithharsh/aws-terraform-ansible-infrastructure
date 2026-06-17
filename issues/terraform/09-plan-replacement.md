# Terraform issue: Plan showed a resource replacement

## What I was doing
I changed an EC2/networking argument and ran `terraform plan` before applying it.

## What happened
Terraform showed a replacement instead of an in-place update.

## How I troubleshot it
I read the plan and identified which argument caused the replacement rather than immediately applying it.

## Fix
I adjusted the configuration after understanding the replacement and reviewed the plan again.

## What I learned
A plan is a safety check. I should understand replacement and destruction actions before running `apply`.
