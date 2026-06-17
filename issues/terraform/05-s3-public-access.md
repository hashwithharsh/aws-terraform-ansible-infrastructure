# Issue: S3 bucket needed a safer default

## What I was doing

The bucket was intended for internal project files, not a public website.

## What I checked

I reviewed the public access settings.

## What I found

Public ACLs and policies were unnecessary.

## Fix

I enabled the S3 public access block and kept the bucket private.

## What I learned

Storage defaults should start private when public access is not required.
