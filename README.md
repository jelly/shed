# Custom toolbox images

```
podman build -t ghcr.io/jelly/fedora-packager .
toolbox rm --force fedora-packager-latest
toolbox create --image ghcr.io/jelly/fedora-packager:latest
```

## Arch Linux testing/staging images

Two images are available which are updated weekly they are based on
`quay.io/toolbx-images/archlinux-toolbox` with [testing] or [staging] enabled
and zsh/bat installed.

```
toolbox create --image ghcr.io/jelly/archlinux-testing -c testing
```

```
toolbox create --image ghcr.io/jelly/archlinux-staging -c staging
```
