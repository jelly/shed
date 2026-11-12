#!/bin/sh
# Generate read only token
# GH_CONFIG_DIR=/claude/gh gh auth login --with-token <<< ""

extra_mount=()
# if [ -f .git ]; then
# 	worktree_bare_git=$(git rev-parse --path-format=absolute --git-common-dir) || exit 1
# 	extra_mounts+=(-v "$worktree_bare_git":"$worktree_bare_git":ro,z)
# fi

podman run -ti --rm --runtime /usr/bin/krun --userns=keep-id -v "$(pwd)":/home/coder/git:Z "${extra_mounts[@]}" --user 1000 -v claude-config:/claude:U -w /home/coder/git archcode:latest claude $@
