#!/usr/bin/env bash
set -euo pipefail

echo "CareerJourney init: verify Xcode toolchain and project state."
echo "Suggested smoke check: xcodebuild -scheme CareerJourney -destination 'platform=macOS' CODE_SIGNING_ALLOWED=NO build"
