# 🧪 Testing Your Cap'n Crunch Object Tracking

## After Replacing the Reference Object File

### Step 1: Build and Run Your visionOS App
1. **Open Xcode**
2. **Open your visionOS project:** `Object Tracking.xcodeproj`
3. **Build and run** on Vision Pro simulator or device
4. **Enter immersive space**

### Step 2: Test Object Detection
1. **Present a Cap'n Crunch box** to the camera/sensors
2. **Look for orange wireframe visualization** around the detected object
3. **Try hand interactions:**
   - Touch the detected object
   - It should glow yellow when touched
   - Recipe should advance from "Step 0" to "Step 1"

### Step 3: Verify Recipe Flow
**Expected behavior:**
- **Step 0:** "Add Cap'n Crunch cereal" → Touch Cap'n Crunch box
- **Step 1:** "Find a container" → Grip dutch oven with both hands  
- **Step 2:** "Find the first ingredient" → Touch the box object
- **Step 3:** "Find the second ingredient" → Touch the milk
- **Complete:** "Enjoy!"

## 🔧 Troubleshooting

### If Object Detection Doesn't Work:
1. **Check file size:** Your .referenceobject should be 5-20MB, not a few KB
2. **Verify file replacement:** Make sure you replaced the placeholder correctly
3. **Clean build:** In Xcode, Product → Clean Build Folder, then rebuild
4. **Check lighting:** Object tracking works best in good lighting conditions
5. **Object orientation:** Try different angles - the object should match your training images

### If App Crashes:
1. **Check Console logs** in Xcode for error messages
2. **Verify object name matching:** The code expects "capncrunch" (lowercase)
3. **Check if all reference objects load:** Box, DutchOven, Milk, CapnCrunch

### Performance Issues:
- Object tracking is computationally intensive
- Works better on device than simulator
- Ensure good lighting and clear view of the object

## 🎯 Success Indicators

**✅ Working correctly when:**
- Cap'n Crunch box appears with orange wireframe overlay
- Wireframe turns yellow when you touch it
- UI shows "Step 0" initially, advances to "Step 1" after touching
- Object tracking follows the box as you move it around
- No crashes or error messages in console

**📱 Best Testing Conditions:**
- Good, even lighting
- Plain background (not too cluttered)
- Hold object steady initially for detection
- Object should be similar size/angle to your training images

## 🔄 If You Need to Retrain

**Signs you might need more training:**
- Object detection is unreliable
- Only works from specific angles
- False positives (detects wrong objects)
- Tracking is jittery or loses object easily

**To improve:**
- Add more training images (20-30 total)
- Include more diverse angles and lighting conditions
- Use higher resolution images
- Retrain with Create ML Object Tracking template