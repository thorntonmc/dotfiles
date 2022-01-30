export MAIN_DIR:=$(realpath $(dir $(lastword $(MAKEFILE_LIST))))
export INSTALL_DIR=$(MAIN_DIR)/scripts/install

INSTALL_MAIN := $(INSTALL_DIR)/main.sh
install:
	bash $(INSTALL_MAIN)
diff:
	bash $(MAIN_DIR)/diff.sh
