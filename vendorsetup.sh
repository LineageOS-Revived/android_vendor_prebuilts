#!/usr/bin/env bash

set -euo pipefail

find "$(dirname "${BASH_SOURCE[0]}")"/ -name "*.apk" -ctime +1 -exec rm {} \;
[[ -f "$(dirname "${BASH_SOURCE[0]}")"/fulguris.apk ]] && return
version=$(curl --fail --silent --show-error --request GET https://f-droid.org/api/v1/packages/net.slions.fulguris.full.fdroid | python3 -c 'import json,sys; print(json.load(sys.stdin)["suggestedVersionCode"])')
dl_url=https://f-droid.org/repo/net.slions.fulguris.full.fdroid_"${version}".apk
echo "${dl_url}"
curl --fail --silent --show-error "${dl_url}" --output "$(dirname ${BASH_SOURCE[0]})"/fulguris.apk

set +euo pipefail
