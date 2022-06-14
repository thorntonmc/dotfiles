main_dir:=$(realpath $(dir $(lastword $(MAKEFILE_LIST))))
install_dir:=$(main_dir)/install
ansible_dir:=$(main_dir)/ansible
install_main := $(install_dir)/main.sh

.PHONY: install

default: help

install-ansible:
	$(main_dir)/scripts/install-ansible.sh

dev-machine: install-ansible
	ansible-playbook $(main_dir)/dev-machine.yml

install: dev-machine
