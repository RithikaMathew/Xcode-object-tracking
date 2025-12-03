# 🎯 Create ML Object Tracking - Step by Step Guide

## ✅ Your Data is Ready!
- **10 training images** properly processed and organized
- **USDZ model** included for reference
- **Folder structure** correctly set up

## 🚀 Create ML Object Tracking Steps

### Step 1: Set Up Project
1. **In Create ML**, create new document
2. **Select "Object Tracking"** template
3. **Save as:** `CapnCrunchObjectTracking.mlproject`

### Step 2: Import Your Data
1. **Drag the entire folder** into Create ML:
   ```
   /Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/CapnCrunchTraining/training_data/capncrunch/
   ```
2. **Create ML should automatically detect:**
   - 10 training images
   - 1 USDZ reference model
   - Object name: "capncrunch"

### Step 3: Configure Training
**Recommended Settings:**
- **Object Name:** `capncrunch`
- **Training Images:** All 10 images should be loaded
- **Reference Model:** capncrunch.usdz should be detected
- **Max Iterations:** 1000 (default for object tracking)
- **Quality:** High (for better accuracy)

### Step 4: Start Training
1. **Click "Train"** button
2. **Expected Duration:** 2-8 hours (faster than full object detection)
3. **Monitor:** Watch the training progress and loss metrics

### Step 5: Export Reference Object
Once training completes:
1. **Go to "Output" tab**
2. **Select the trained model**
3. **Export as:** `.referenceobject`
4. **Save as:** `CapnCrunch.referenceobject`

### Step 6: Replace in Your Project
```bash
# Backup the placeholder
mv "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/CapnCrunch.referenceobject" "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/CapnCrunch.referenceobject.backup"

# Move your trained reference object
mv "/path/to/exported/CapnCrunch.referenceobject" "/Users/xrconnectivity/Desktop/visionOS-2-Object-Tracking-Demo/Object Tracking/Reference Objects/CapnCrunch.referenceobject"
```

## 🎯 What Makes This Different from Object Detector

**Object Tracking Template:**
- ✅ Specifically designed for ARKit/visionOS
- ✅ Creates proper `.referenceobject` files
- ✅ Uses USDZ models for 3D understanding
- ✅ No JSON annotations needed
- ✅ Optimized for real-world object tracking

**Object Detector Template:**
- ❌ For 2D image recognition only
- ❌ Needs bounding box annotations
- ❌ Creates `.mlmodel` files (not `.referenceobject`)
- ❌ Not suitable for visionOS spatial tracking

## 📁 Your Training Data Structure
```
training_data/
└── capncrunch/
    ├── capncrunch_01.jpg    # Different angles of your Cap'n Crunch
    ├── capncrunch_02.jpg    # Screenshots from USDZ preview
    ├── ...                  # 10 total images
    ├── capncrunch_10.jpg
    └── capncrunch.usdz      # Reference 3D model
```

## 🎉 Success Indicators
- Training completes without errors
- Generated `.referenceobject` file is 5-20MB
- Object tracking works in your visionOS app
- Cap'n Crunch box is detected and tracked in real-world

Your training data is perfectly set up now! Just drag the `capncrunch` folder into Create ML's Object Tracking template and start training.