#!/bin/bash
set -eo pipefail

host="${1:?}"
name="${2:?}"
dir="${KUBE_CONFIG_DIR:?}"

rsync "ba@${host}:~/.kube/config" "${dir}/${name}"
