ROLE_NAME ?= default_env

role:
	@ansible-galaxy init roles/$(ROLE_NAME)

ping:
	@ansible -i inventory/all.yml all -m ping
