# dotfiles

My personal dotfiles, with automatic installation that should work on
Arch, Fedora, and Ubuntu

To run the installer, simply

```bash
make install
```

There is built in CI to ensure the installation works, on the LTS releases
(and base image for Arch) for each distro.

To test an image not covered, you can run

```
alias docker=podman
image=ubuntu
tag=22.04

docker build \
    --build-arg IMAGE="${image}:${tag}" \
    --tag "dotfiles_${image}:latest" \
    .

docker run \
    -it \
    --rm \
    --name "dotfiles_${image}_$(date +%s)" \
    dotfiles_${image}:latest \
    ./scripts/install-ansible.sh && ansible-playbook ansible/dev-machine.yml
```

## todo

### drivers
logitech mx master drivers
https://github.com/PixlOne/logiops#readme + https://danishshakeel.me/configure-logitech-mx-master-3-on-linux-logiops/

### aur stuff
spotify, slack, etc...
