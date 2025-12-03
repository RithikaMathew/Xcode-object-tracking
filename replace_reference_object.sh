#!/bin/bash
# Script to replace the placeholder reference object with your trained one

echo "🔄 Replacing CapnCrunch Reference Object"
echo "======================================"
echo

# Paths
PLACEHOLDER_PATH="/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/CapnCrunch.referenceobject"
BACKUP_PATH="/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/CapnCrunch.referenceobject.backup"

# Check if placeholder exists
if [ ! -f "$PLACEHOLDER_PATH" ]; then
    echo "❌ Placeholder file not found at: $PLACEHOLDER_PATH"
    exit 1
fi

# Backup the placeholder
echo "📦 Backing up placeholder file..."
cp "$PLACEHOLDER_PATH" "$BACKUP_PATH"
echo "✅ Backup created: $BACKUP_PATH"

echo
echo "🎯 MANUAL STEPS NEEDED:"
echo "1. Find your trained CapnCrunch.referenceobject file"
echo "   (Check Desktop, Downloads, or where you exported it)"
echo
echo "2. Replace the placeholder file:"
echo "   - Delete or rename: $PLACEHOLDER_PATH"
echo "   - Copy your trained file to: $PLACEHOLDER_PATH"
echo
echo "3. Or use this command (replace PATH_TO_YOUR_TRAINED_FILE):"
echo "   cp 'PATH_TO_YOUR_TRAINED_FILE' '$PLACEHOLDER_PATH'"
echo
echo "📁 The file should be several MB in size (not just a few KB like the placeholder)"

# Look for potential exported files
echo
echo "🔍 Looking for potential exported reference objects..."
find ~/Desktop ~/Downloads -name "*.referenceobject" -type f 2>/dev/null | head -5