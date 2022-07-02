# dotfiles

My personal dotfiles, with automatic installation that work on
Arch, Fedora, and Ubuntu

To run the installer, simply

```bash
make install
make extras
```

To test the bootstrap in a container, you can run

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


### aur stuff
spotify, slack, etc...

# enabling bluetooth on boo

```
/etc/bluetooth/main.conf
------------------------------------------------------------------------------
[Policy]
AutoEnable=true
```
