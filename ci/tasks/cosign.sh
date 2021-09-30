#!/usr/bin/env bash

set -eux

echo "$COSIGN_KEY" > ./cosign.key
cosign sign -key ./cosign.key "$IMAGE"
