#!/bin/sh
set -eu
game_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
game_binary="$game_dir/neoomsi"
if [ ! -x "$game_binary" ]; then
    printf 'Place this launcher next to an executable neoomsi binary: %s\n' "$game_binary" >&2
    exit 127
fi
cd "$game_dir"
export OMSI_CONTENT="${OMSI_CONTENT:-$game_dir}"
if [ -n "${DISPLAY:-}" ]; then
    unset WAYLAND_DISPLAY WAYLAND_SOCKET
fi
exec "$game_binary" --menu "$@"
