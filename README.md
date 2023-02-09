# Custom toolbox images



```
podman build -t ghcr.io/jelly/fedora-packager .
toolbox rm --force fedora-packager-latest
toolbox create --image ghcr.io/jelly/fedora-packager:latest
```
