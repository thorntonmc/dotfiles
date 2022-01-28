#!/bin/bash

TYPEDIR="DIR"
TYPEFILE="FILE"

# diff ./diff against $HOME/diff
diff_file() {
    f=$1
    type=$2

    diff $f $HOME/$f &> /dev/null
    RESULT=$?

    if [ $RESULT == 1 ]; then
        diff $f $HOME/$f
        echo "local changes were found for $f \
            would you like to copy it here (y for YES)"
        read ANSWER

        if [ $ANSWER == "y" ]; then
            cp $HOME/$f ./$f
        fi
    fi

}

for f in .[!.]* *; do
    TYPE=""
    if [ -d "$HOME/$f" ]; then
        TYPE=TYPEDIR
    elif [ -f "$HOME/$f" ]; then
        TYPE=TYPEFILE
    else
        echo did not find $f
        continue
    fi
    diff_file $f $TYPE
done
