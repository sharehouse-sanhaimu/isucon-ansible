
- install uv

```sh
# On macOS and Linux.
$ curl -LsSf https://astral.sh/uv/install.sh | sh
$ source $HOME/.local/bin/env
$ uv init
```

- install conda

```sh
$ mkdir -p ~/miniconda3
$ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
$ bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
$ rm ~/miniconda3/miniconda.sh
```

- create Ansible Role

```sh
$ ansible-galaxy init roles/ROLE_NAME # or make role ROLE_NAME
```

- Ping Ansible

```sh
$ ansible -i inventory/hosts all -m ping # or make ping
```

- Check Diff After Running Playbook with Tags

```sh
$ ansible-playbook -i inventory/hosts site.yml --check --diff --tags init-vm
```

- Apply Playbook with Tags

```sh
$ ansible-playbook -i inventory/hosts site.yml --tags init-vm
```

# Ref

- https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html
