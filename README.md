# 自宅サーバーの構成管理用のAnsible

## Envirionment

- Conda: 24.9.2
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

### Roleの実行前に差分を確認

```sh
$ make check-diff TAG_NAME={TAG_NAME} # Tagを指定して実行
$ make check-diff HOST_NAME={HOST_NAME} # Hostを指定して実行
```

### Roleの実行

```sh
$ make apply-role TAG_NAME={TAG_NAME} # Tagを指定して実行
$ make apply-role HOST_NAME={HOST_NAME} # Hostを指定して実行
```

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
