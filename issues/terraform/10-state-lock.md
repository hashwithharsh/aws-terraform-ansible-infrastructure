# Terraform issue: S3 state was locked

## What I was doing

I was testing the remote S3 backend and started another Terraform command while
a previous operation had not finished cleanly.

## What happened

Terraform reported that the state was locked instead of allowing a second write.

## What I checked

I checked whether another Terraform process was still running and looked at the
lock information before doing anything destructive.

## What I found

The S3 backend was using Terraform's native lock file support. A `.tflock` object
was present for the state.

## Fix

After confirming the first Terraform operation was no longer running, I followed
the normal Terraform unlock/cleanup process and ran `terraform plan` again.

## What I learned

State locking is there to protect shared infrastructure state. I should not
force-unlock a state just because a command is inconveniently blocked. I should
first make sure no other Terraform operation is still active.
