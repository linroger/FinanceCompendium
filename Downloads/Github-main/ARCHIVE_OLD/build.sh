#!/bin/bash
# Build script for Intel Mac (x86_64) GitHub App

set -e

echo "Building GitHub App for Intel Mac..."

# Detect platform
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    echo "Detected macOS platform"
    
    # Ensure directory structure exists
    mkdir -p GithubApp.app/Contents/MacOS
    mkdir -p GithubApp.app/Contents/Resources
    
    # Create app icon if iconset exists
    if [ -d "GithubApp.iconset" ]; then
        echo "Creating app icon from iconset..."
        if ! iconutil -c icns GithubApp.iconset -o GithubApp.app/Contents/Resources/AppIcon.icns; then
            echo "Error: Failed to create app icon using 'iconutil'. Aborting build." >&2
            exit 1
        fi
    else
        echo "Warning: GithubApp.iconset not found, app will not have an icon" >&2
    fi
    
    # Clean previous build (suppress errors if file doesn't exist)
    rm -f GithubApp.app/Contents/MacOS/GithubApp
    
    mkdir -p .build

    echo "Compiling x86_64..."
    xcrun swiftc Sources/main.swift \
        -parse-as-library \
        -target x86_64-apple-macosx10.13 \
        -o .build/GithubApp-x86_64 \
        -framework Cocoa \
        -framework WebKit

    # Try to compile arm64 too (for Apple Silicon). If it fails, fall back to x86_64-only.
    if xcrun swiftc Sources/main.swift \
        -parse-as-library \
        -target arm64-apple-macosx11.0 \
        -o .build/GithubApp-arm64 \
        -framework Cocoa \
        -framework WebKit 2>/dev/null; then
        echo "Compiling arm64... ok"
        echo "Creating universal binary..."
        xcrun lipo -create \
            -output GithubApp.app/Contents/MacOS/GithubApp \
            .build/GithubApp-x86_64 \
            .build/GithubApp-arm64
    else
        echo "Compiling arm64... skipped (toolchain/SDK may not support it)"
        cp .build/GithubApp-x86_64 GithubApp.app/Contents/MacOS/GithubApp
    fi

    # Ad-hoc sign so macOS is more likely to launch it without issues
    # (Still "unnotarized"; users may need right-click > Open when downloaded.)
    if command -v codesign >/dev/null 2>&1; then
        echo "Ad-hoc signing app bundle..."
        codesign --force --deep --sign - GithubApp.app || true
    fi
    
    echo "Build complete! App created at: GithubApp.app"
    echo "To run the app: open GithubApp.app"
else
    echo "This build script must be run on macOS."
    echo "Use GitHub Actions workflow to build the app automatically."
    exit 1
fi
