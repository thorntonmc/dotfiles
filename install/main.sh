#!/bin/sh
case "$(uname -s)" in
    Darwin)
        $INSTALL_DIR/macos.sh
        ;;

    Linux)
        echo "linux"
        . /etc/os-release
        if [ -x "$(command -v apt)" ]; then
           PACKAGE_MGR="APT"
        fi

        if [ -x "$(command -v pacman)" ]; then
           PACKAGE_MGR="PACMAN"
        fi
        echo $PACKAGE_MGR
        PACKAGE_MGR=$PACKAGE_MGR $INSTALL_DIR/linux.sh
        ;;
    *)
        echo "unsupported OS"
        exit 1
esac
