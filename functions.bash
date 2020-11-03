#!/usr/bin/env bash
set -euo pipefile
IFS=$'\n\t'

RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'

export RED
export NC
export GREEN


function warn() {
    printf "%s: %s\n" "$0:" "$@" >&2
}

function die() {
    rc=$1
    shift
    warn "$@"
    exit "$rc"
}
