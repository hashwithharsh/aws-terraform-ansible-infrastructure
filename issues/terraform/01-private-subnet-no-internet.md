# Issue: Private subnet had no package connectivity

## What I was doing

I expected a private subnet server to reach package repositories.

## What I checked

I checked the route table and saw there was no default route.

## What I found

The private route table had no NAT gateway.

## Fix

I added a NAT gateway in the public subnet and a default private route.

## What I learned

A private subnet can stay private while still having controlled outbound access.
