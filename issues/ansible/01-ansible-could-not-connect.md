# Issue: Ansible could not connect to EC2

## What I was doing

I had a running instance but the playbook still returned UNREACHABLE.

## What I checked

I checked the instance IP, security group, SSH key and the inventory.

## What I found

The inventory had the wrong public IP.

## Fix

I replaced it with the current address and tested SSH first.

## What I learned

I learned to separate SSH connectivity problems from Ansible task problems.
