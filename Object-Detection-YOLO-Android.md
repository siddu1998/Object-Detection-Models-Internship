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
1. 
