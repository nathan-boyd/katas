#!/bin/bash

source "${HOME}/.zshfn/logInfo"

logInfo "starting cleanup"

rm -rf ./*/**/kata_**

logInfo "done"
