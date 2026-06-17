# Issue: Terraform provider version needed to be pinned

## What I was doing

I wanted the project to behave the same way when I came back to it later.

## What I checked

I checked the required provider block.

## What I found

The provider version was too open-ended.

## Fix

I added a version constraint and a Terraform version requirement.

## What I learned

Pinning versions reduces surprises when returning to an old project.
