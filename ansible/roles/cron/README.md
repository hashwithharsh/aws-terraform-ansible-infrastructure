# cron role

Enable cron and manage scheduled jobs.

## Typical use

Run the related playbook from `../../playbooks/` against a test or development
host first. Use check mode before changing a server when practical:

```bash
ansible-playbook -i ../../inventory/dev.ini ../../playbooks/site.yml --check --diff
```

## Role layout

- `tasks/main.yml` contains the main work.
- `defaults/main.yml` contains values that can be overridden.
- `meta/main.yml` contains role metadata and dependencies.
- `handlers/main.yml` is used where a service should restart only after a change.
- `templates/` contains Jinja templates where the role needs generated config.

## What I check when it fails

I normally check the target OS, package/service name, become permissions, role
variables and the exact task output before changing the role.
