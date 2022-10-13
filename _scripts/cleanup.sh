#!/bin/bash

set -e

source "${HOME}/.zshfn/logInfo"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
APP_DIR="$(dirname "$SCRIPT_DIR")"

logInfo "starting cleanup"

################################################################################
# cleanup kata_00

# clean up rust kata
rm -rf ./*/**/kata_00

################################################################################
# cleanup kata_0

# clean up rust kata
git checkout HEAD -- "${APP_DIR}/rust/01/kata_01/src/main.rs"
rm "${APP_DIR}/rust/01/kata_01/Cargo.lock"

################################################################################

logInfo "done"
