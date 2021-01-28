#!/usr/bin/env bash
set -euo pipefail
IFS=$'\t\n'


RED=$'\e[0;31m'
NC=$'\e[0m'
GREEN=$'\e[0;32m'


REALPATH_CMD=$(command -v realpath || printf '')
READLINK_CMD=$(command -v readlink || printf '')

export RED
export NC
export GREEN
export REALPATH_CMD
export READLINK_CMD
