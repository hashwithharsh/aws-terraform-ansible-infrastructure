# Ansible issue: Configuration changed but service did not restart

## What I was doing
I changed a web-server template and expected the service to restart.

## What happened
The file changed but the handler was not triggered.

## Fix
I compared the task's `notify` name with the handler name and corrected the mismatch.

## What I learned
Handlers are useful for restarting services only when the configuration they depend on actually changes.
