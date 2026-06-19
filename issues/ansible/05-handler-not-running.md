# Issue: Service restart handler was not triggered

## What I was doing

I changed a web page and expected the handler to run only when the file changed.

## What I checked

I checked notify and handler names.

## What I found

The notify name did not exactly match the handler.

## Fix

I made the names identical and reran the playbook.

## What I learned

Ansible handlers depend on matching names.
