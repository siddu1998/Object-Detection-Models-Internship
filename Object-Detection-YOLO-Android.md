# Object Detection for Android using YOLO

## Description
The final objective would be to train your custom objects using YOLO and use Tensorflow's android demo apk and drop our weights instead of tensorflow's weights file.

![Example Android App](https://cdn-images-1.medium.com/max/1600/0*tjFSNqz0AshUSw4N.jpeg)

## Collecting a dataset
1. Create your custom dataset with images not larger than 500x500px for better accuracy.
2. 40-100 images per class is ideal.

## Generating labels from images
1. Clone the https://github.com/AlexeyAB/Yolo_mark repository.
2. Navigate to Yolo_Mark/x64/Release/data/img and paste your images dataset in there.
3. Change the number of classes at obj.data to the number of objects you want to train
4. Change the list of names in obj.names
5. Navigate to Yolo_mark/x64/Release/yolo-obj.cfg and line number 236 `classes=2` to the number of classes you have.
6. Navigate to line number 224 and change the number of filters to `(no of classes+5)x5`
7. Go to the root directory of Yolo_Mark and run ./linux_mark.sh

## Running the model in darknet
1. Clone the https://github.com/AlexeyAB/darknet repository
2. Copy the yolo-obj.cfg, obj.data and obj.names from Yolo_Mark and paste it in the darknet directory.
3. Open the Makefile in the darknet directory and add these lines to the start of the file.
4. GPU=1 to build with CUDA to accelerate by using GPU (CUDA should be in /usr/local/cuda) <br>
   CUDNN=1 to build with cuDNN v5-v7 to accelerate training by using GPU (cuDNN should be in /usr/local/cudnn)<br>
   CUDNN_HALF=1 to build for Tensor Cores (on Titan V / Tesla V100 / DGX-2 and later) speedup Detection 3x, Training 2x<br>
   OPENCV=1 to build with OpenCV 3.x/2.4.x - allows to detect on video files and video streams from network cameras or web-cams<br>
   DEBUG=1 to bould debug version of Yolo<br>
   OPENMP=1 to build with OpenMP support to accelerate Yolo by using multi-core CPU<br>
   LIBSO=1 to build a library darknet.so and binary runable file uselib that uses this library. Or you can try to run so     LD_LIBRARY_PATH=./:$LD_LIBRARY_PATH ./uselib test.mp4 How to use this SO-library from your own code - you can look at C++ example: https://github.com/AlexeyAB/darknet/blob/master/src/yolo_console_dll.cpp
5. Run the` make` command.
6. Download the pre-trained weights from http://pjreddie.com/media/files/darknet53.conv.74 and paste it in the darknet repository.
7. Run `darknet detector train obj.data yolo-obj.cfg darknet53.conv.74`

## When to stop the training
When you see that average loss 0.xxxxxx avg no longer decreases at many iterations then you should stop training.

## Testing your model
1. There would be a weights file generated in `darknet/bin`. Copy the name
