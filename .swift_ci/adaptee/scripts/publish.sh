#!/usr/bin/env bash
function Here() {
  set -o pipefail
  _self="$(basename -- $0 .sh)"; _relative="../../../"
  _here="$( cd "$( dirname "${BASH_SOURCE[0]}")/$_relative" >/dev/null 2>&1 && pwd )"
}

### Main
Here; status=1
echo "[$_self] - ENTER [$@][$_here]"
set -x
   cp -vf  ${_here}/publish/${SWIFT_CISB_DOCUMENT_BUNDLE}.pdf  ${_here}/content.pdf
   cp -vr  ${_here}/images ${_here}/publish/sites/images && status=0
set +x
echo "[$_self] - LEAVE [$status]"

exit ${status}
