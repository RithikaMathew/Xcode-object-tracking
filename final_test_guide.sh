#!/bin/bash
# Build and test script for Cap'n Crunch integration

echo "🛠️  Building visionOS Object Tracking with Cap'n Crunch"
echo "====================================================="
echo

# Navigate to project directory
cd "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo"

echo "📁 Checking reference objects:"
ls -la "Object Tracking/Reference Objects/"*.referenceobject

echo
echo "🔧 MANUAL STEPS NEEDED:"
echo "1. In Xcode: Right-click 'Reference Objects' folder"
echo "2. Select 'Add Files to Object Tracking'"
echo "3. Add: CapnCrunch.referenceobject"
echo "4. Make sure 'Add to target' is checked"
echo "5. Clean Build Folder (Product → Clean Build Folder)"
echo "6. Build and Run (Cmd+R)"
echo
echo "🎯 Expected Cap'n Crunch Behavior:"
echo "• Orange particle effects when not touched (CrunchMagic)"
echo "• Bubbles effect when touched (CrunchBubbles)"
echo "• Recipe advances from Step 0 to Step 1 when touched"
echo "• Should work exactly like the Milk object now"
echo
echo "🧪 Test Order:"
echo "1. Test Milk object first (should still work)"
echo "2. Test Cap'n Crunch object (should have same effects)"
echo "3. Verify recipe progression: Step 0 → Step 1 → Step 2 → Step 3 → Complete"