# Ansible issue: Privileged task failed

## What I was doing
I was installing packages and writing system configuration files.

## What happened
The remote account did not have enough privileges for the task.

## Fix
I used `become: true` and verified that the remote account could use sudo.

## What I learned
Ansible privilege escalation should be handled with `become` instead of putting `sudo` into every shell command.
