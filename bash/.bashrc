#!/bin/bash

for script in "${HOME}"/.local/scripts/bash/*; do
    source "${script}"
done

for config in "${HOME}"/.bash/*; do
    source "${config}"
done
