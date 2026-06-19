# Ansible troubleshooting

These are troubleshooting notes from building and testing this Ansible lab. They are lab incidents and learning notes, not claims of production incidents.

## Common checks

```bash
ansible-inventory --graph
ansible-inventory --host HOST
ansible all -m ping
ansible HOST -m setup
ansible-playbook -i inventory/dev.ini playbooks/site.yml --check --diff
ansible-playbook -i inventory/dev.ini playbooks/site.yml --limit HOST
ansible-playbook -i inventory/dev.ini playbooks/site.yml -vvv
```
