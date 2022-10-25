#!/bin/bash

set -e

# shellcheck disable=SC1091
source "${HOME}/.zshfn/logInfo"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
APP_DIR="$(dirname "$SCRIPT_DIR")"

logInfo "starting cleanup in ${APP_DIR}"

################################################################################
# cleanup kata_00

# clean up rust kata
rm -rf ./*/**/kata_00

################################################################################
# cleanup kata_01

# clean up rust kata
git checkout HEAD -- "${APP_DIR}/rust/01/kata_01/src/main.rs"
rm -rf "${APP_DIR}/rust/01/kata_01/Cargo.lock"

# clean up go kata
rm -rf "${APP_DIR}"/golang/01/*.mod
rm -rf "${APP_DIR}"/golang/01/*.go

################################################################################
# reset submodules, like vim-kata

git submodule foreach git reset --hard

################################################################################

logInfo "done"
