#!/usr/bin/env bash
# Helper to rebuild and deploy RevealJS presentation container.
set -x
.swift_ci/workflow/pipeline.template.sh && presentation/show.sh
set +x 