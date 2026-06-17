# Issue: EC2 IAM role had no useful permission

## What I was doing

The instance profile existed but did not let the server do anything with the project bucket.

## What I checked

I checked the role and its attached policies.

## What I found

There was no application reason for the role yet.

## Fix

I added a small S3 policy for list, get and put operations on the project bucket.

## What I learned

IAM permissions should have a clear purpose and limited scope.
