# visionOS 2 Object Tracking Demo

This project demonstrates AI-powered object tracking on Apple Vision Pro using **visionOS 2**, **ARKit Object Tracking**, and **Create ML**. The application recognizes a specific real-world object and provides visual feedback when that object is detected in the user's environment.

The project combines concepts from Apple's Scene Reconstruction and Object Tracking sample applications, integrating object recognition with immersive spatial visualizations.

## Project Overview

The goal was to train the system to recognize a specific cereal box rather than a generic category of objects. Once the trained object is identified within the user's surroundings, the application generates colorful particle effects to indicate successful detection and tracking in real time.

## Technical Implementation

### 1. Object Capture

The cereal box was scanned using **Reality Composer** on an iPhone. Images were captured from multiple angles to reconstruct the object's 3D geometry and create a high-quality USDZ model.

### 2. Model Training

The generated USDZ model was imported into **Create ML's Object Tracking** workflow. Create ML used the scanned object data to train a reference object capable of recognizing the cereal box in real-world environments. Training required approximately eight hours to complete.

### 3. Vision Pro Integration

The trained reference object was integrated into a **visionOS 2** application built with **ARKit** and **SwiftUI**. When the Vision Pro detects the trained cereal box, the app anchors visual effects to the object's position and continuously tracks it as it moves through the environment.

## Features

* AI-based object recognition using Create ML
* Real-time object tracking with ARKit
* Detection of a specific trained object rather than a generic category
* Spatial visual effects anchored to tracked objects
* Built for Apple Vision Pro and visionOS 2

## Technologies Used

* visionOS 2
* ARKit Object Tracking
* Create ML
* Reality Composer
* SwiftUI
* Apple Vision Pro

## Demo

Watch the demo video below:

![visionOS 2 Object Tracking Demo](https://drive.google.com/file/d/1jzku4RYqvGqMszgwS4huu9b6mgDt0DBr/view?usp=sharing)
