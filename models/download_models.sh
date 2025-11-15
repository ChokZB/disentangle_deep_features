#!/bin/bash
# Downloads the VGG19 (Caffe) pretrained model used for feature extraction.

cd "$(dirname "$0")"
wget -c https://web.eecs.umich.edu/~justincj/models/vgg19-d01eb7cb.pth
echo "VGG19 model downloaded to models/."
