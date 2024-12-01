# Ansibleのコマンド例

- create Ansible Role

```sh
$ ansible-galaxy init roles/ROLE_NAME
```

- Ping Ansible

```sh
$ ansible -i inventory/hosts all -m ping
```

- Check Diff After Running Playbook with Tags

```sh
$ ansible-playbook -i inventory/hosts site.yml --check --diff --tags init-vm
```

- Apply Playbook with Tags

```sh
$ ansible-playbook -i inventory/hosts site.yml --tags init-vm
```
