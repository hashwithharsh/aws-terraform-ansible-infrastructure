# Issue: Second Ansible run changed things again

## What I was doing

I expected a second run to report mostly ok because the server was already configured.

## What I checked

I ran the same playbook twice and looked at changed tasks.

## What I found

A task was using a command where a module could keep state.

## Fix

I replaced it with a module or marked the read-only command changed_when false.

## What I learned

Idempotence is useful because playbooks are often run more than once.
