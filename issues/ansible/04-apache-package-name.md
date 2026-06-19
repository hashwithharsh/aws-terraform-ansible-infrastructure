# Issue: Apache package name was different on Linux distributions

## What I was doing

The playbook worked on Ubuntu but the package name was wrong on a RedHat host.

## What I checked

I checked ansible_os_family and the package manager.

## What I found

Debian uses apache2 while RedHat uses httpd.

## Fix

I used a variable based on the OS family.

## What I learned

Small OS differences are worth handling in reusable roles.
