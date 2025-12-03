#!/bin/bash
# Debugging script for object tracking issues

echo "🔍 visionOS Object Tracking Debug"
echo "================================="
echo

echo "📁 Reference Objects:"
echo "$(ls -la '/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/' | grep -E '\.(referenceobject)$')"
echo

echo "🔍 Checking CapnCrunch.referenceobject contents:"
cd "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects"
unzip -l CapnCrunch.referenceobject | head -10

echo
echo "🎯 COMMON ISSUES TO CHECK:"
echo
echo "1. 📱 ARE YOU TESTING ON DEVICE OR SIMULATOR?"
echo "   - Object tracking works MUCH better on actual Vision Pro"
echo "   - Simulator has limited AR capabilities"
echo
echo "2. 🔆 LIGHTING CONDITIONS:"
echo "   - Need good, even lighting"
echo "   - Avoid direct sunlight or very dim lighting"
echo "   - Plain background works better than cluttered"
echo
echo "3. 📏 OBJECT SIZE & DISTANCE:"
echo "   - Hold object 1-3 feet from cameras"
echo "   - Object should be similar size to training images"
echo "   - Try different angles - start with angles you trained on"
echo
echo "4. 🎮 APP STATE:"
echo "   - Did you enter immersive space?"
echo "   - Is object tracking permission granted?"
echo "   - Any error messages in Xcode console?"
echo
echo "5. 🏗️ BUILD ISSUES:"
echo "   - Did you clean build after adding the reference object?"
echo "   - Is the reference object properly bundled in the app?"