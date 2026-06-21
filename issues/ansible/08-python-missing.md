# Ansible issue: Python was missing on the managed host

## What I was doing
I was configuring a newly provisioned Linux server with Ansible modules.

## What happened
SSH worked, but module execution failed because Python was not installed on the remote host.

## Fix
I added Python to the common server bootstrap and kept the application role aware of its own runtime dependency.

## What I learned
SSH connectivity and remote module execution are separate checks. A fresh server may need a small bootstrap step.
