#!/usr/bin/env bash

set -euo pipefail

version=$(curl --fail --silent --show-error --request GET https://f-droid.org/api/v1/packages/net.slions.fulguris.full.fdroid | python3 -c 'import json,sys; print(json.load(sys.stdin)["suggestedVersionCode"])')
curl https://f-droid.org/repo/net.slions.fulguris.full.fdroid_"${version}".apk --output "$(dirname ${BASH_SOURCE[0]})"/fulguris.apk

set +euo pipefail
