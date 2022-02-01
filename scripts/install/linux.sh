#!/bin/bash

# only supports ubuntu right now, needs to hit right make target for each
# supported distro
install() {
    make -C $MAIN_DIR ubuntu-dev-machine
}
