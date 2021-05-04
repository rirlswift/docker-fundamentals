#!/usr/bin/env bash
# Simple run wrapper for docker webdeploy container.
export WEBDEPLOY_VERSION=v1
echo "[$0]:: Begin [$*]"
status=0

set -x;
docker run --name nginx-docker-swift -d -p 9090:80 webdeploy:${WEBDEPLOY_VERSION}
status=$?
set +x

echo "[$0]:: End   [$status]"
exit $status