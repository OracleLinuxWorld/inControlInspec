.PHONY: yum
.DEFAULT_GOAL := all

all: yum check

yum:
	cd ansible && ansible-playbook -i inventory/environments/all/hosts ansible-playbook.yml --tags "yum"

check:
	cd ansible && ansible-playbook -i inventory/environments/all/hosts ansible-playbook.yml --tags "check"
