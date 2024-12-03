ROLE_NAME ?= default_env

role:
	@ansible-galaxy init roles/$(ROLE_NAME)

ping:
	@ansible -i inventory/hosts all -m ping
