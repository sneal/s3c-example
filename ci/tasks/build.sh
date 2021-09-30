#!/usr/bin/env sh

set -eux

cp s3c-repo/ci/harbor.crt /usr/local/share/ca-certificates/harbor.crt
cat /usr/local/share/ca-certificates/harbor.crt >> /etc/ssl/certs/ca-certificates.crt

build

mv ../image/image.tar ./s3c-image/image.tar
