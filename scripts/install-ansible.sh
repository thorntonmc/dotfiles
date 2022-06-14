#!/bin/sh

apt_install() {
    export DEBIAN_FRONTEND=noninteractive # skip tzinfo prompts
    apt update && apt install -y ansible
    unset DEBIAN_FRONTEND
}

dnf_install() {
    dnf -y install ansible
}

pacman_install() {
    pacman -Syu --noconfirm ansible
}

yum_install() {
    yum -y install ansible
}


set -e
pm_found=1

command -v ansible-playbook > /dev/null && echo "ansible already installed" && exit 0

for pm in pacman apt dnf yum; do
    ! command -v "${pm}" >/dev/null &&  echo "${pm}" not installed && continue
    pm_found=0
    eval "${pm}_install"
    break
done

[ "${pm_found}" != 0 ] && echo "package manager not found" && exit 1

command -v ansible-playbook
exit "${?}"
