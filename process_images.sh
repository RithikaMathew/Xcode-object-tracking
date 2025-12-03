#!/bin/bash
# Image Processing Script for Create ML Training
# Uses built-in macOS tools (sips) to resize images

echo "🖼️  Image Processing for Create ML Training"
echo "================================================"
echo

DESKTOP_PATH="$HOME/Desktop"
TRAINING_DIR="/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/CapnCrunchTraining/images"

# Count images on desktop
IMAGE_COUNT=$(find "$DESKTOP_PATH" -maxdepth 1 \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" \) | wc -l | tr -d ' ')

if [ "$IMAGE_COUNT" -eq 0 ]; then
    echo "❌ No images found on Desktop"
    echo
    echo "📋 MANUAL STEPS:"
    echo "1. Open your capncrunch.usdz file (it should be open now)"
    echo "2. Rotate the 3D model to different angles"
    echo "3. Take screenshots using Cmd+Shift+4"
    echo "4. Take 10-20 screenshots from different angles"
    echo "5. Save them to your Desktop"
    echo "6. Run this script again"
    echo
    echo "💡 TIP: Get these angles:"
    echo "   • Front, Back, Left, Right"
    echo "   • Top-down, Bottom-up"
    echo "   • 45-degree angles (diagonal views)"
    echo "   • Close-up and medium distance shots"
    exit 1
fi

echo "📁 Found $IMAGE_COUNT images on Desktop"
echo "🔄 Processing images..."
echo

# Process each image
counter=1
for img in "$DESKTOP_PATH"/*.{png,jpg,jpeg}; do
    if [ -f "$img" ]; then
        # Get filename without path and extension
        basename=$(basename "$img")
        extension="${basename##*.}"
        
        # Create output filename
        output_name="capncrunch_angle_$(printf "%02d" $counter).jpg"
        output_path="$TRAINING_DIR/$output_name"
        
        # Resize image to 512x512 using sips (built-into macOS)
        sips -z 512 512 "$img" --out "$output_path" > /dev/null 2>&1
        
        if [ $? -eq 0 ]; then
            echo "✅ Processed: $output_name"
            counter=$((counter + 1))
        else
            echo "❌ Error processing: $basename"
        fi
    fi
done

echo
echo "🎉 Successfully processed $((counter - 1)) images!"
echo "📂 Images saved to: $TRAINING_DIR"
echo
echo "🚀 NEXT STEPS:"
echo "1. Open Create ML application"
echo "2. Create new 'Object Detector' project"
echo "3. Drag the images folder into the training data section"
echo "4. Label all images as 'capncrunch'"
echo "5. Start training (expect 4-16 hours)"
echo "6. Export the trained model as .referenceobject"
echo "7. Replace the placeholder CapnCrunch.referenceobject file"