#!/bin/bash
# Package GithubApp.app into a simple DMG.
#
# Requirements:
# - Run on macOS (uses hdiutil)
# - GithubApp.app exists in repo root

set -euo pipefail

APP_BUNDLE="GithubApp.app"
DMG_NAME="GithubApp-Intel-Mac.dmg"
STAGING_DIR=".dmg-staging"

if [[ "${OSTYPE:-}" != "darwin"* ]]; then
  echo "This script must be run on macOS." >&2
  exit 1
fi

if [[ ! -d "$APP_BUNDLE" ]]; then
  echo "Missing $APP_BUNDLE. Build the app first." >&2
  exit 1
fi

rm -f "$DMG_NAME"
rm -rf "$STAGING_DIR"
mkdir -p "$STAGING_DIR"

cp -R "$APP_BUNDLE" "$STAGING_DIR/"
ln -s /Applications "$STAGING_DIR/Applications"

echo "Creating DMG: $DMG_NAME"
hdiutil create \
  -volname "GitHub App" \
  -srcfolder "$STAGING_DIR" \
  -ov \
  -format UDZO \
  "$DMG_NAME"

rm -rf "$STAGING_DIR"

echo "DMG created: $DMG_NAME"
