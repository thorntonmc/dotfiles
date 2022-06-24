main_dir:=$(realpath $(dir $(lastword $(MAKEFILE_LIST))))
install_dir:=$(main_dir)/install
ansible_dir:=$(main_dir)/ansible
install_main := $(install_dir)/main.sh

.PHONY: install

default: help

install-ansible:
	$(main_dir)/scripts/install-ansible.sh

dotfiles:
	ansible-playbook -K $(ansible_dir)/dev-machine.yml --tags dotfiles

packages:
	ansible-playbook -K $(ansible_dir)/dev-machine.yml --tags packages

rootless-podman:
	ansible-playbook -K $(ansible_dir)/dev-machine.yml --tags rootless-podman

dev-machine: install-ansible
	ansible-playbook -K $(ansible_dir)/dev-machine.yml
logi-ops: 
	./scripts/logi-ops.sh
extras: logi-ops

install: dev-machine
