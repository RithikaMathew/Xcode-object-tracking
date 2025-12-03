# 🤖 Create ML Training Guide for Cap'n Crunch Object Detection

## ✅ Prerequisites Complete
- [x] 9 training images processed and ready
- [x] Images resized to 512x512 pixels
- [x] Images saved to training folder
- [x] Create ML application available

## 🚀 Step-by-Step Create ML Training Process

### 1. Open Create ML
```bash
# Create ML should already be open, if not:
open -a "Create ML"
```

### 2. Create New Project
1. **Click "New Document"**
2. **Select "Object Detector"** from templates
3. **Choose "Single Object Detector"**
4. **Save as:** `CapnCrunchObjectDetector.mlproject`
5. **Save location:** Same folder as your training images

### 3. Configure Training Data
1. **Drag the images folder** into the "Training Data" section
   - Folder location: `/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/CapnCrunchTraining/images`
2. **Label all images as:** `capncrunch`
3. **Verify all 9 images** are loaded correctly

### 4. Training Configuration
**Recommended Settings:**
- **Algorithm:** Full Network (best quality)
- **Max Iterations:** 10,000 (default)
- **Validation:** 80% training, 20% validation
- **Augmentation:** Enable (helps with variations)

### 5. Start Training
1. **Click "Train"** button
2. **Expected Duration:** 4-16 hours depending on your Mac
3. **Monitor Progress:** Watch the loss metrics decrease
4. **Don't close Create ML** during training

### 6. Export Reference Object
Once training completes:
1. **Click "Output"** tab
2. **Select trained model**
3. **Click "Save As"**
4. **Choose format:** `.referenceobject`
5. **Name:** `CapnCrunch.referenceobject`
6. **Save to:** `/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/`

### 7. Replace Placeholder
```bash
# Replace the placeholder file
mv "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/CapnCrunch.referenceobject" "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/CapnCrunch.referenceobject.backup"

# Move your trained file to replace it
mv "/path/to/your/trained/CapnCrunch.referenceobject" "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/CapnCrunch.referenceobject"
```

## 🎯 Training Tips

### For Better Results:
- **More Images:** If training accuracy is low, add more images (15-30 total)
- **Different Angles:** Ensure you have top, bottom, side, and diagonal views
- **Consistent Lighting:** Try to match lighting conditions where you'll use the app
- **Clean Background:** Remove distracting elements from screenshots

### Monitoring Training:
- **Loss should decrease** over time
- **Accuracy should increase** over iterations
- **If loss plateaus early:** Consider adding more diverse training images

## 🔧 Troubleshooting

### If Training Fails:
1. **Check image quality:** All images should be clear and focused
2. **Verify labels:** All images should be labeled as 'capncrunch'
3. **Add more images:** 9 might be minimum, try 15-20 images
4. **Consistent object size:** Object should fill 20-80% of each image

### Performance Issues:
- **Free up disk space:** Training requires several GB
- **Close other apps:** Give Create ML maximum resources
- **Use power adapter:** Don't let your Mac sleep during training

## ✅ Success Indicators
- Training completes without errors
- Validation accuracy > 80%
- Generated .referenceobject file is several MB in size
- Object tracking works in your visionOS app

## 🎉 Final Step
Once you replace the placeholder file, your visionOS app will be able to detect and track your Cap'n Crunch object in the real world!

The recipe will now start with:
**Step 0:** Add Cap'n Crunch cereal (touch the detected object)