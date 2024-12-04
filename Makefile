ROLE_NAME ?= default_env
HOST_NAME ?= "all"
TAG_NAME ?= "all"

role:
	@ansible-galaxy init roles/$(ROLE_NAME)

ping:
	@ansible -i inventory/hosts all -m ping

syntax-check:
	@ansible-lint

check-diff:
	ansible-playbook -i inventory/hosts site.yml --check --diff --limit $(HOST_NAME) --tags $(TAG_NAME)

apply-role:
	@ansible-playbook -i inventory/hosts site.yml --limit $(HOST_NAME) --tags $(TAG_NAME)

clean-branch:
	@git remote prune origin
	@git branch | xargs git branch -d
