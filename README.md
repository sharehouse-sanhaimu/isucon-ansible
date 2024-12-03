# 自宅サーバーの構成管理用のAnsible

## Envirionment

- Python: 3.13.0
- Ansible: 11.0.0, https://github.com/ansible/ansible
  - Ansible Core: 2.18.0

## Ansible Roleの作成

```sh
$ make role ROLE_NAME=role_name
```

## 接続先サーバーへの接続確認

```sh
$ make ping
```

## Playbookの実行

- Check Diff After Running Playbook with Tags

```sh
$ ansible-playbook -i inventory/hosts site.yml --check --diff --tags init-vm
```

- Apply Playbook with Tags

```sh
$ ansible-playbook -i inventory/hosts site.yml --tags init-vm
```

- Limit Host to apply Ansible Playbook

```sh
$ ansible-playbook -i inventory/hosts site.yml --limit {HOSTNAME}
## Show All Ansible Facts

```yaml
- name: Print all available facts
  ansible.builtin.debug:
    var: ansible_facts
```

## その他のドキュメント

- [Ansibleのコマンド例](docs/ansible-cmd.md)
- [Install Conda](docs/install-conda.md)
- [Install uv](docs/install-uv.md)

# Ref

- https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html
- https://docs.ansible.com/ansible/devel/command_guide/index.html
