# Ansible issue: Host-specific variable was not being used

## What I was doing
I used `group_vars` for shared values and `host_vars` for server-specific values.

## What happened
The server used the shared value when I expected the host-specific setting.

## Fix
I checked the inventory and variable locations, then moved the server-specific setting into the correct `host_vars` file.

## What I learned
Variable location and precedence matter, especially when the same variable exists at more than one level.
