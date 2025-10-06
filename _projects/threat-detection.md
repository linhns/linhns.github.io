---
title: Threat Detection in Images
description: AI-based image threat classification
date: 2025-01-10
tech: [Python, TensorFlow]
links:
  - name: Poster
    url: /assets/projects/CS4243-poster.pdf
  - name: GitHub
    url: https://github.com/linhns/cs4243-project
---

### Task definition

Classify images into 3 different threat categories: normal(no threat),
carrying(a weapon is being carried), threat(a threat can be detected)

### Implementation details

Based on the dataset given to our group, it was clear that transfer learning
is the only method at our disposal as while models are often trained on
60000-4000000 images, the dataset contains roughly only 4000 images
after we manually removed those that were wrongly labeled.

We followed the ML Pipeline quite closely and constructed a pluggable
and configurable pipeline, which can be adapted for different models
and hence different projects. It allows control of shuffling, batching,
and minor image manipulations supported by tensorflow.

At the modelling stage, the choice was to stick with a popular,
heavily-adopted approach by the deep learning community,
and thus we chose a ResNet50V2 trained on ImageNet as our feature extractor,
attached a minimal classification head, and performed transfer learning and
fine-tuning with early stopping to avoid overfitting.

### Results

Despite our best efforts, we only achieved 78% accuracy,
which is not deployable by any means. We suspected a deeper problem
regarding data and problem concept, and ran the same process
with InceptionV3 as a feature extractor.
There were not much difference in terms of accuracy.
Looking at the confusion matrices showed little,
thereby confirming our intuition of data problems such as blurriness,
misclassifications, and subtlety between **threat** and **carrying**.
More details on our findings and future improvements are in the poster.

### My contribution

I took sole responsibility to perform all programming-required parts,
manually inspected the images and contributed to content selection for poster.
During poster demo day, I conducted a presentation for 1 judge and
assisted with Q&A when teammates presented.

*Note*: This project was done for NUS module [CS4243 Computer Vision](https://nusmods.com/modules/CS4243/computer-vision-and-pattern-recognition)
