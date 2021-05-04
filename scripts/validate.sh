#!/usr/bin/env bash
# Simple validate wrapper for docker webdeploy container.
echo "[$0]:: Begin [$*]"

WEBDEPLOY_VERSION_EXPECTED="1.0"

WEBDEPLOY_PORT=9090
WEBDEPLOY_URL="http://ubuntu:${WEBDEPLOY_PORT}/version.txt"

status=1

echo "[$0]:: Validate [${WEBDEPLOY_URL}] Expected [${WEBDEPLOY_VERSION_EXPECTED}]"

WEBDEPLOY_VERSION_ACTUAL=$(curl -s ${WEBDEPLOY_URL}| grep VersionInfo| cut -d':' -f2| tr -d " \t\n\r")
[[ "$WEBDEPLOY_VERSION_ACTUAL" == "$WEBDEPLOY_VERSION_EXPECTED" ]]  && status=0

echo "[$0]:: Actual [${WEBDEPLOY_VERSION_ACTUAL}] Expected [${WEBDEPLOY_VERSION_EXPECTED}]"
echo "[$0]:: End   [$status]"
exit $status