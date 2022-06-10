export MAIN_DIR:=$(realpath $(dir $(lastword $(MAKEFILE_LIST))))
export INSTALL_DIR=$(MAIN_DIR)/install
export ANSIBLE_DIR=$(MAIN_DIR)/ansible

INSTALL_MAIN := $(INSTALL_DIR)/main.sh
install:
	bash $(INSTALL_MAIN)
macos-dev-machine:
	ansible-playbook $(ANSIBLE_DIR)/$@.yml
ubuntu-dev-machine:
	ansible-playbook $(ANSIBLE_DIR)/$@.yml
arch-dev-machine:
	ansible-playbook $(ANSIBLE_DIR)/$@.yml
diff:
	bash $(MAIN_DIR)/diff.sh
stow:
	$(INSTALL_DIR)/$@.sh
