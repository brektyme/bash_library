#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'



function warn() {
    printf "%s: %s\n" "$0:" "$@" >&2
}

function die() {
    rc=$1
    shift
    warn "$@"
    exit "$rc"
}
