#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# shellcheck disable=1090
source <(curl -s https://raw.githubusercontent.com/brektyme/bash_library/main/variables.bash)


function warn() {
    echo "$0: ${RED}$*${NC}">&2
}

function die() {
    rc=$1
    shift
    warn "$@"
    exit "$rc"
}
