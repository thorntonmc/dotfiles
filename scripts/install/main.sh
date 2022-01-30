#!/bin/sh
case "$(uname -s)" in
    Darwin)
        $INSTALL_DIR/macos.sh
        ;;

    Linux)
        echo "linux"
        $INSTALL_DIR/linux.sh
        ;;
    *)
        echo "unsupported OS"
        exit 1
esac
