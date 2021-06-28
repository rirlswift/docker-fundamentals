#!/usr/bin/env bas h
# Helper to start RevealJS in container.
set -x
docker run -it --rm -p 8000:8000 --name "swift-presentation-server" --entrypoint /bin/bash  --workdir=/reveal.js swiftx/revealjs:v2 -c "npm start"
set +x 