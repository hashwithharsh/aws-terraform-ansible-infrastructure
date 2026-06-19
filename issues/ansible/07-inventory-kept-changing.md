# Issue: Inventory was becoming hard to manage

## What I was doing

The EC2 address changed during testing and I kept editing the same inventory file.

## What I checked

I checked which values were environment-specific.

## What I found

The IP and SSH key were not suitable for a shared tracked file.

## Fix

I kept example inventories and used host_vars for per-host values.

## What I learned

Separating tracked configuration from local connection details makes the repo easier to reuse.
