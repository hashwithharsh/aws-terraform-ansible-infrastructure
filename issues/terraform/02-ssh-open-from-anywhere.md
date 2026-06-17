# Issue: SSH was open to the whole internet

## What I was doing

The first security group allowed port 22 from 0.0.0.0/0 while testing.

## What I checked

I reviewed the ingress rules after the instance was reachable.

## What I found

SSH access was broader than needed.

## Fix

I changed the rule to a variable containing my public IP as /32.

## What I learned

Getting access working is not the same as securing the access.
