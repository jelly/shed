#!/bin/sh

repo=$1

enable_testing() {
	sed -i 's#^\[core\]#\[core-testing\]\nInclude = /etc/pacman.d/mirrorlist\n\n\[extra-testing\]\nInclude = /etc/pacman.d/mirrorlist\n\n\[core\]#' /etc/pacman.conf
}

enable_staging() {
	sed -i 's#^\[core-testing\]#\[core-staging\]\nInclude = /etc/pacman.d/mirrorlist\n\n\[extra-staging\]\nInclude = /etc/pacman.d/mirrorlist\n\n\[testing\]#' /etc/pacman.conf
}

if [ "$repo" = "testing" ]; then
	enable_testing
fi

if [ "$repo" = "staging" ]; then
	enable_testing
	enable_staging
fi
