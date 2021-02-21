#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# shellcheck disable=1090
source <(curl -s https://raw.githubusercontent.com/brektyme/bash_library/main/variables.bash)

# source ./variables.bash



function warn() {
    echo "$0: ${RED}$*${NC}">&2
}

function die() {
    rc=$1
    shift
    warn "$@"
    exit "$rc"
}

function abs_path() {
    [ -z "$1" ] && die 1 "${FUNCNAME[0]}: no arg passed!"
    local __rel_path=${1:-''}
    # [ -n "$REALPATH_CMD" ] && echo "$($REALPATH_CMD -z $__rel_path)"; return 0
    # [ -n "$READLINK_CMD" ] && echo "$($READLINK_CMD -fz $__rel_path)"; return 0
    
    if [ -d "$__rel_path" ]; then
        cd "$__rel_path"
        pwd
        return 0
    fi
    if [ -f "$__rel_path" ]; then
        case "$__rel_path" in
            /*)
                echo "$__rel_path"
                return 0
                ;;
            */*)
                echo "$(cd "${__rel_path%/*}"; pwd)/${__rel_path##*/}"
                return 0
                ;;
            *)
                echo "$(pwd)/$__rel_path"
                return 0
                ;;
        esac
    fi
}


function is_file() {
    test -f "$1"; return $?
}

# From https://stackoverflow.com/questions/8063228/check-if-a-variable-exists-in-a-list-in-bash
contains() {
    local name=$1[@]
    local arr=("${!name}")
    if [[ ${arr[*]} =~ (^|[[:space:]])"$2"($|[[:space:]]) ]]; then
        return 0
    else
        return 1
    fi
}
