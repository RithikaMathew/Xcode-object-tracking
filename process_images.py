#!/usr/bin/env python3
"""
Image Processing Script for Create ML Training
Resizes and organizes training images
"""

import os
from PIL import Image
import glob

def process_training_images():
    desktop_path = os.path.expanduser("~/Desktop")
    training_dir = "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/CapnCrunchTraining/images"
    
    print("🖼️  Image Processing for Create ML Training")
    print("=" * 50)
    print()
    
    # Look for screenshot images on desktop
    screenshot_patterns = [
        f"{desktop_path}/Screenshot*.png",
        f"{desktop_path}/Screen Shot*.png",
        f"{desktop_path}/*.png",
        f"{desktop_path}/*.jpg",
        f"{desktop_path}/*.jpeg"
    ]
    
    images_found = []
    for pattern in screenshot_patterns:
        images_found.extend(glob.glob(pattern))
    
    if not images_found:
        print("❌ No images found on Desktop")
        print("📋 MANUAL STEPS:")
        print("1. Take screenshots of your USDZ model from different angles")
        print("2. Save them to your Desktop")
        print("3. Run this script again")
        print()
        print("💡 TIP: Use Cmd+Shift+4 to take selective screenshots")
        return
    
    print(f"📁 Found {len(images_found)} images on Desktop")
    print("🔄 Processing images...")
    
    processed_count = 0
    for i, img_path in enumerate(images_found):
        try:
            # Open and process image
            with Image.open(img_path) as img:
                # Convert to RGB if needed
                if img.mode != 'RGB':
                    img = img.convert('RGB')
                
                # Resize to optimal size for Create ML (512x512)
                img_resized = img.resize((512, 512), Image.Resampling.LANCZOS)
                
                # Save to training directory
                output_name = f"capncrunch_angle_{i+1:02d}.jpg"
                output_path = os.path.join(training_dir, output_name)
                img_resized.save(output_path, "JPEG", quality=90)
                
                processed_count += 1
                print(f"✅ Processed: {output_name}")
                
        except Exception as e:
            print(f"❌ Error processing {img_path}: {e}")
    
    print()
    print(f"🎉 Successfully processed {processed_count} images!")
    print(f"📂 Images saved to: {training_dir}")
    print()
    print("🚀 NEXT STEPS:")
    print("1. Open Create ML")
    print("2. Create new Object Detector project")
    print("3. Drag the images folder into the training data section")
    print("4. Label all images as 'capncrunch'")
    print("5. Start training (4-16 hours)")

if __name__ == "__main__":
    try:
        from PIL import Image
        process_training_images()
    except ImportError:
        print("❌ PIL (Pillow) not installed")
        print("💡 Install with: pip3 install Pillow")
        print("   Then run this script again")