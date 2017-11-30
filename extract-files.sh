#!/bin/sh

set -e

export DEVICE=molly
export VENDOR=google
../molly-common/extract-files.sh $@
