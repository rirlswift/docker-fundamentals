#!/usr/bin/env bash
# Helper to stop RevealJS in container.
set -x
docker cp  publish/images swift-presentation-server:/reveal.js/images
docker cp  publish/docker-fundamentals.html swift-presentation-server:/reveal.js/index.html
set +x 