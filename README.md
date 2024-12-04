[![ansible-lint](https://github.com/AobaIwaki123/ansible/actions/workflows/lint.yml/badge.svg)](https://github.com/AobaIwaki123/ansible/actions/workflows/lint.yml)

# 自宅サーバーの構成管理用のAnsible

## Envirionment

- Conda: 24.9.2
- Python: 3.13.0
- Ansible: 11.0.0, https://github.com/ansible/ansible
  - Ansible Core: 2.18.0

## Ansible Roleの雛形の作成

```sh
$ make role ROLE_NAME=role_name
```

## 疎通確認

```sh
$ make ping
```

## Ansible Playbookの構文チェック

```sh
$ make syntax-check
```

## Ansible Playbookの実行

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

## Ansible Factsを全て表示するタスク

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
