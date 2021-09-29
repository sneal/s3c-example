#!/usr/bin/env bash

set -eux

pushd s3c-repo
go version
go build -o ../s3c-binary/s3c-example .
popd
