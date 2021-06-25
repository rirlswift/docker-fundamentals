#!/usr/bin/env bash
# Helper to stop RevealJS in container.
set -x
docker stop  "swift-presentation-server" 
set +x 