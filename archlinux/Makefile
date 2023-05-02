PODMAN ?= podman

all: archlinux-staging archlinux-testing

archlinux-staging:
	podman build -t ghcr.io/jelly/archlinux-staging --build-arg REPO=staging .

archlinux-testing:
	podman build -t ghcr.io/jelly/archlinux-testing --build-arg REPO=testing .
