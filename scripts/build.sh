#!/usr/bin/env bash
# Simple build wrapper for docker webdeploy container.
export WEBDEPLOY_VERSION=v1
echo "[$0]:: Begin [$*]"
status=0

set -x; docker build --file Dockerfile --tag webdeploy:${WEBDEPLOY_VERSION} $(pwd); status=$?; set +x

echo "[$0]:: End   [$status]"
exit $status