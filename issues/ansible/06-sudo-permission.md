# Issue: Playbook failed without privilege escalation

## What I was doing

Package installation failed when I ran the playbook as a normal user.

## What I checked

I checked the failed task and tried the same operation with sudo.

## What I found

The task needed root privileges.

## Fix

I added become: true to the administrative playbooks.

## What I learned

Server configuration tasks normally need controlled privilege escalation.
