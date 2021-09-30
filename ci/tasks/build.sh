#!/usr/bin/env sh

set -eux

cp s3c-repo/ci/harbor.crt /usr/local/share/ca-certificates/harbor.crt
cat /usr/local/share/ca-certificates/harbor.crt >> /etc/ssl/certs/ca-certificates.crt

# the build task below requires an output dir of image
mkdir -p image

# build the container image using the oci builder task
build

# remap the image dir to s3c-image
mkdir -p s3c-image
cp image/* s3c-image/
