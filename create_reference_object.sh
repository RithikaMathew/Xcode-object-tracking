#!/bin/bash
# Create proper reference object structure for visionOS

echo "🎯 Creating visionOS Reference Object"
echo "===================================="
echo

# Create temporary working directory
TEMP_DIR="/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/CapnCrunchTraining/reference_object_temp"
mkdir -p "$TEMP_DIR"

# Copy the capncrunch.usdz as object.usdz
cp "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Packages/RealityKitContent/Sources/RealityKitContent/RealityKitContent.rkassets/capncrunch.usdz" "$TEMP_DIR/object.usdz"

# Create metadata.json
cat > "$TEMP_DIR/metadata.json" << 'EOF'
{
  "author" : "Your Name",
  "description" : "Cap'n Crunch cereal box for object tracking",
  "fileFormatVersion" : "1.0",
  "license" : "",
  "mluiVersion" : "146.1",
  "osVersion" : "24A5264n",
  "uuid" : "CAPN-CRUNCH-4CBD-ABB0-367A736D7B54",
  "visibleName" : "CapnCrunch Tracker",
  "xcodeVersion" : "16A5170u"
}
EOF

# Create basic objectMetadata.json (you'll need to adjust these coordinates based on your model)
cat > "$TEMP_DIR/objectMetadata.json" << 'EOF'
{
  "geometry" : {
    "boundingBox" : {
      "max" : [
        0.1,
        0.25,
        0.05
      ],
      "min" : [
        -0.1,
        0,
        -0.05
      ]
    },
    "keypoints" : [
      [-0.1, 0, -0.05],
      [0.1, 0, -0.05],
      [-0.1, 0.25, -0.05],
      [-0.1, 0, 0.05],
      [0.1, 0.25, -0.05],
      [-0.1, 0.25, 0.05],
      [0.1, 0, 0.05],
      [0.1, 0.25, 0.05]
    ]
  },
  "viewLimits" : {
    "excludesBacksideViews" : false,
    "excludesBottomViews" : false,
    "isGravityAligned" : false
  }
}
EOF

echo "✅ Created reference object template files"
echo "📁 Location: $TEMP_DIR"
echo
echo "🚨 IMPORTANT: You still need the ML models!"
echo
echo "🎯 CORRECT CREATE ML STEPS:"
echo "1. Close your current Create ML project"
echo "2. In Create ML, create NEW project"
echo "3. Choose 'ARReferenceObject' (NOT Object Detector)"
echo "4. Import your training images OR"
echo "5. Use 'Scan with iPhone/iPad' feature to create reference object"
echo
echo "📱 RECOMMENDED: Use iOS Object Capture"
echo "1. Use Object Capture on iPhone/iPad to scan real Cap'n Crunch box"
echo "2. Export as .referenceobject directly"
echo "3. This gives you the best tracking accuracy"