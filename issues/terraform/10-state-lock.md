# Terraform issue: State was locked

## What I was doing
I was running another Terraform change after a previous operation had stopped unexpectedly.

## What happened
Terraform reported that the state was locked.

## How I troubleshot it
I checked whether another Terraform process was active and inspected the lock information before considering any unlock action.

## Fix
After confirming the lock was stale, I cleared it using the normal Terraform workflow and ran `terraform plan` again.

## What I learned
State locking protects shared state. I should never force-unlock blindly.
