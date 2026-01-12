#!/bin/bash
# Modern Swift 6.2 build script for Apple Silicon
# Builds native macOS app optimized for M-series chips

set -e

echo "🚀 Building GitHub App with Swift 6.2 for Apple Silicon..."

# Configuration
APP_NAME="GitHub"
BUNDLE_ID="com.github.wrapper.swift"
VERSION="2.0.0"
MIN_MACOS="15.0"
BUILD_DIR=".build"
APP_DIR="$APP_NAME.app"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Detect architecture
ARCH=$(uname -m)
if [ "$ARCH" = "arm64" ]; then
    echo -e "${GREEN}✅ Detected Apple Silicon (arm64)${NC}"
    PRIMARY_ARCH="arm64"
    SECONDARY_ARCH="x86_64"
else
    echo -e "${YELLOW}⚠️  Detected Intel Mac (x86_64)${NC}"
    PRIMARY_ARCH="x86_64"
    SECONDARY_ARCH="arm64"
fi

# Clean previous build
echo -e "${BLUE}🧹 Cleaning previous build...${NC}"
rm -rf "$BUILD_DIR"
rm -rf "$APP_DIR"

# Create build directory
mkdir -p "$BUILD_DIR"

# Create app bundle structure
echo -e "${BLUE}📦 Creating app bundle structure...${NC}"
mkdir -p "$APP_DIR/Contents/MacOS"
mkdir -p "$APP_DIR/Contents/Resources"
mkdir -p "$APP_DIR/Contents/Frameworks"

# Build for primary architecture (Apple Silicon)
echo -e "${BLUE}🔨 Compiling for $PRIMARY_ARCH...${NC}"
swiftc \
    App/GitHubApp.swift \
    Models/NavigationState.swift \
    Models/WebViewState.swift \
    Views/ContentView.swift \
    Views/WebView.swift \
    Views/SidebarView.swift \
    Views/ToolbarView.swift \
    -target "$PRIMARY_ARCH-apple-macos$MIN_MACOS" \
    -swift-version 6 \
    -Xfrontend -strict-concurrency=complete \
    -Xfrontend -enable-upcoming-feature -Xfrontend StrictConcurrency \
    -O \
    -whole-module-optimization \
    -framework SwiftUI \
    -framework WebKit \
    -framework AppKit \
    -framework Foundation \
    -o "$BUILD_DIR/$APP_NAME-$PRIMARY_ARCH" \
    2>&1 | tee "$BUILD_DIR/build-$PRIMARY_ARCH.log" || {
        echo -e "${RED}❌ Build failed for $PRIMARY_ARCH${NC}"
        echo -e "${YELLOW}Check $BUILD_DIR/build-$PRIMARY_ARCH.log for details${NC}"
        exit 1
    }

echo -e "${GREEN}✅ Successfully compiled for $PRIMARY_ARCH${NC}"

# Try to build for secondary architecture (for universal binary)
echo -e "${BLUE}🔨 Attempting to compile for $SECONDARY_ARCH...${NC}"
if swiftc \
    App/GitHubApp.swift \
    Models/NavigationState.swift \
    Models/WebViewState.swift \
    Views/ContentView.swift \
    Views/WebView.swift \
    Views/SidebarView.swift \
    Views/ToolbarView.swift \
    -target "$SECONDARY_ARCH-apple-macos$MIN_MACOS" \
    -swift-version 6 \
    -Xfrontend -strict-concurrency=complete \
    -Xfrontend -enable-upcoming-feature -Xfrontend StrictConcurrency \
    -O \
    -whole-module-optimization \
    -framework SwiftUI \
    -framework WebKit \
    -framework AppKit \
    -framework Foundation \
    -o "$BUILD_DIR/$APP_NAME-$SECONDARY_ARCH" \
    2>&1 | tee "$BUILD_DIR/build-$SECONDARY_ARCH.log"; then

    echo -e "${GREEN}✅ Successfully compiled for $SECONDARY_ARCH${NC}"
    echo -e "${BLUE}🔗 Creating universal binary...${NC}"

    lipo -create \
        -output "$APP_DIR/Contents/MacOS/$APP_NAME" \
        "$BUILD_DIR/$APP_NAME-$PRIMARY_ARCH" \
        "$BUILD_DIR/$APP_NAME-$SECONDARY_ARCH"

    echo -e "${GREEN}✅ Created universal binary (arm64 + x86_64)${NC}"
else
    echo -e "${YELLOW}⚠️  Could not compile for $SECONDARY_ARCH (SDK may not support it)${NC}"
    echo -e "${YELLOW}📝 Creating $PRIMARY_ARCH-only binary${NC}"

    cp "$BUILD_DIR/$APP_NAME-$PRIMARY_ARCH" "$APP_DIR/Contents/MacOS/$APP_NAME"
fi

# Make executable
chmod +x "$APP_DIR/Contents/MacOS/$APP_NAME"

# Create Info.plist
echo -e "${BLUE}📝 Creating Info.plist...${NC}"
cat > "$APP_DIR/Contents/Info.plist" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleDevelopmentRegion</key>
    <string>en</string>
    <key>CFBundleExecutable</key>
    <string>$APP_NAME</string>
    <key>CFBundleIdentifier</key>
    <string>$BUNDLE_ID</string>
    <key>CFBundleInfoDictionaryVersion</key>
    <string>6.0</string>
    <key>CFBundleName</key>
    <string>$APP_NAME</string>
    <key>CFBundlePackageType</key>
    <string>APPL</string>
    <key>CFBundleShortVersionString</key>
    <string>$VERSION</string>
    <key>CFBundleVersion</key>
    <string>$VERSION</string>
    <key>LSMinimumSystemVersion</key>
    <string>$MIN_MACOS</string>
    <key>NSHighResolutionCapable</key>
    <true/>
    <key>NSHumanReadableCopyright</key>
    <string>© 2026 GitHub Wrapper</string>
    <key>LSApplicationCategoryType</key>
    <string>public.app-category.developer-tools</string>
    <key>NSSupportsAutomaticGraphicsSwitching</key>
    <true/>
    <key>CFBundleIconFile</key>
    <string>AppIcon</string>
    <key>NSPrincipalClass</key>
    <string>NSApplication</string>
</dict>
</plist>
EOF

# Copy app icon if exists
if [ -f "../assets/icon.png" ]; then
    echo -e "${BLUE}🎨 Creating app icon...${NC}"

    # Create iconset directory
    ICONSET_DIR="$BUILD_DIR/AppIcon.iconset"
    mkdir -p "$ICONSET_DIR"

    # Generate icon sizes using sips
    sips -z 16 16 "../assets/icon.png" --out "$ICONSET_DIR/icon_16x16.png" > /dev/null 2>&1
    sips -z 32 32 "../assets/icon.png" --out "$ICONSET_DIR/icon_16x16@2x.png" > /dev/null 2>&1
    sips -z 32 32 "../assets/icon.png" --out "$ICONSET_DIR/icon_32x32.png" > /dev/null 2>&1
    sips -z 64 64 "../assets/icon.png" --out "$ICONSET_DIR/icon_32x32@2x.png" > /dev/null 2>&1
    sips -z 128 128 "../assets/icon.png" --out "$ICONSET_DIR/icon_128x128.png" > /dev/null 2>&1
    sips -z 256 256 "../assets/icon.png" --out "$ICONSET_DIR/icon_128x128@2x.png" > /dev/null 2>&1
    sips -z 256 256 "../assets/icon.png" --out "$ICONSET_DIR/icon_256x256.png" > /dev/null 2>&1
    sips -z 512 512 "../assets/icon.png" --out "$ICONSET_DIR/icon_256x256@2x.png" > /dev/null 2>&1
    sips -z 512 512 "../assets/icon.png" --out "$ICONSET_DIR/icon_512x512.png" > /dev/null 2>&1
    sips -z 1024 1024 "../assets/icon.png" --out "$ICONSET_DIR/icon_512x512@2x.png" > /dev/null 2>&1

    # Create icns file
    iconutil -c icns "$ICONSET_DIR" -o "$APP_DIR/Contents/Resources/AppIcon.icns" 2>/dev/null || {
        echo -e "${YELLOW}⚠️  Could not create icns file, copying PNG instead${NC}"
        cp "../assets/icon.png" "$APP_DIR/Contents/Resources/AppIcon.png"
    }

    echo -e "${GREEN}✅ App icon created${NC}"
fi

# Code sign (ad-hoc)
echo -e "${BLUE}✍️  Code signing...${NC}"
codesign --force --deep --sign - "$APP_DIR" 2>/dev/null || {
    echo -e "${YELLOW}⚠️  Code signing failed (not critical for local use)${NC}"
}

# Print binary info
echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ Build completed successfully!${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${BLUE}📊 Binary information:${NC}"
file "$APP_DIR/Contents/MacOS/$APP_NAME"
echo ""
echo -e "${BLUE}📦 App size:${NC}"
du -sh "$APP_DIR"
echo ""
echo -e "${BLUE}🏗️  Architecture:${NC}"
lipo -info "$APP_DIR/Contents/MacOS/$APP_NAME"
echo ""
echo -e "${GREEN}🚀 To run the app:${NC}"
echo -e "   ${YELLOW}open $APP_DIR${NC}"
echo ""
echo -e "${GREEN}📁 App bundle location:${NC}"
echo -e "   ${YELLOW}$(pwd)/$APP_DIR${NC}"
echo ""
