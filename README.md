# 自宅サーバーの構成管理用のAnsible

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

## その他のドキュメント

- [Ansible Command](docs/ansible-cmd.md)
- [Install Conda](docs/install-conda.md)
- [Install uv](docs/install-uv.md)

# Ref

- https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html
