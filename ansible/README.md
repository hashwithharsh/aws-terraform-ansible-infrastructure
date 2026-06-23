# Ansible server setup reference

This directory is my practical Ansible reference for the Linux and DevOps tasks
I expect to repeat while managing servers. The project uses small playbooks for
individual jobs and reusable Ansible roles for common server configuration.

## Layout

```text
ansible/
├── inventory/       example inventories
├── host_vars/      host-specific examples
├── group_vars/     shared variables
├── playbooks/      small day-to-day jobs
├── Ansible roles/          reusable server configuration
└── collections/    collection requirements
```

## First checks

```bash
ansible-inventory -i inventory/dev.ini --list
ansible all -i inventory/dev.ini -m ping
ansible all -i inventory/dev.ini -m setup
```

## Useful playbook commands

```bash
ansible-playbook -i inventory/dev.ini playbooks/06-install-apache.yml --check --diff
ansible-playbook -i inventory/dev.ini playbooks/06-install-apache.yml
ansible-playbook -i inventory/dev.ini playbooks/site.yml --limit webservers
ansible-playbook -i inventory/dev.ini playbooks/site.yml --tags ssh
ansible-playbook -i inventory/dev.ini playbooks/site.yml --list-tasks
ansible-playbook -i inventory/dev.ini playbooks/site.yml --list-hosts
```

## Useful ad-hoc commands

```bash
ansible all -i inventory/dev.ini -m ping
ansible all -i inventory/dev.ini -m command -a "uptime"
ansible all -i inventory/dev.ini -m shell -a "df -h"
ansible all -i inventory/dev.ini -m service -a "name=sshd state=started" --become
ansible all -i inventory/dev.ini -m package -a "name=curl state=present" --become
```

Prefer modules over `shell` when a module exists. Use `--check --diff` before
changes when the module supports check mode.

## Troubleshooting flow

When a playbook fails I first check the inventory, SSH connectivity, become
permissions, variables, package/service names and the exact failed task. I keep
longer troubleshooting notes in `../issues/ansible/`.

## Safety

The inventory files are examples. Do not commit private keys, passwords, tokens,
real production inventory values or other secrets.
- Prefer tag-based runs for partial apply
