#!/bin/bash

set -e

source "${HOME}/.zshfn/logInfo"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
APP_DIR="$(dirname "$SCRIPT_DIR")"

logInfo "starting cleanup"

rm -rf ./*/**/kata_00
git checkout HEAD -- "${APP_DIR}/rust/01/kata_01/src/main.rs"

logInfo "done"
