#!/usr/bin/env bash
set -euo pipefail
IFS=$'\t\n'


RED=$'\e[0;31m'
NC=$'\e[0m'
GREEN=$'\e[0;32m'
BOLD_GREEN=$'\e[1;32m'
BOLD_RED=$'\e[1;31m'
BOLD=$'\e[1m'
UL=$'\e[3m'


REALPATH_CMD=$(command -v realpath || printf '')
READLINK_CMD=$(command -v readlink || printf '')

export RED
export NC
export GREEN
export BOLD
export BOLD_RED
export BOLD_GREEN
export UL
export REALPATH_CMD
export READLINK_CMD
