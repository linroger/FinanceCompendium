# GitHub App Icon

This directory contains the official GitHub Octocat mark icon for the GitHub App.

## Contents

- `icon_16x16.png` / `icon_16x16@2x.png` - 16x16 icon (and 32x32 retina)
- `icon_32x32.png` / `icon_32x32@2x.png` - 32x32 icon (and 64x64 retina)
- `icon_128x128.png` / `icon_128x128@2x.png` - 128x128 icon (and 256x256 retina)
- `icon_256x256.png` / `icon_256x256@2x.png` - 256x256 icon (and 512x512 retina)
- `icon_512x512.png` / `icon_512x512@2x.png` - 512x512 icon (and 1024x1024 retina)

## Design

The icon features the official GitHub Octocat mark in white on GitHub's signature dark background (#24292e). This is the recognizable GitHub logo used across their platform.

**Trademark Notice**: The GitHub logo and Octocat mark are trademarks of GitHub, Inc. This app is an unofficial client and is not affiliated with or endorsed by GitHub, Inc. The logo is used for identification purposes only.

## Building

The iconset is automatically converted to `.icns` format during the build process on macOS using the `iconutil` command.

## Source

The icons are generated from `github-logo.svg` which contains the official GitHub Octocat mark. To regenerate the icons from the SVG source:

```bash
./create-icon.sh
```

This will use the SVG source to create all required icon sizes with proper scaling and quality.

## Customization

The icon is based on GitHub's official branding. If you need to customize:
1. Edit `github-logo.svg` with your preferred design
2. Run `./create-icon.sh` to regenerate all icon sizes
3. The build script will automatically regenerate the `.icns` file
