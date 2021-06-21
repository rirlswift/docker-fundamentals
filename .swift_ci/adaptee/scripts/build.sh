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
   [[ -d $_here/publish ]] && rm -rf $_here/publish  
   mkdir -p $_here/publish/sites && \
   asciidoctor-pdf content.adoc --quiet \
   --out-file ${SWIFT_CISB_DOCUMENT_BUNDLE}.pdf \
   --destination-dir ${_here}/publish &&
   asciidoctor-revealjs content.adoc --quiet \
   --out-file ${SWIFT_CISB_DOCUMENT_BUNDLE}.html \
   --destination-dir ${_here}/publish/sites &&
   status=0
set +x 

echo "[$_self] - LEAVE [$status]"


exit ${status}
