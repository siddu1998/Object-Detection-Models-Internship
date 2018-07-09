## Training own set of Images for detection using Yolo

Step 1: Get a lot of images

Step 2: Clone darknet 

Step 3: Clone Yolo-Mark

Step 5: place the images in Yolo-Mark/x64/Release/data/img/ (#### Make sure you have on .jpg images)

Step 6: Navigate to the Yolo-Mark/x64/Release/data/ and change the obj.data to the number of classes you have

Step 7: Open the obj.name in Yolo-Mark/x64/Release/data/ and write down the names of your class

Step 8: navigate to the Yolo-Mark/ and run ./linux_mark.sh if errors pop it is either because you have failed to make the folder or you have not given permission to make the .sh executable 

Step 9: Keep drawing bounding boxes based on the location of object in the image, and make sure the class for which you are drawing is correctly reflected on the GUI application

Step 10: TRAINING! copy the contents in the Yolo-Mark/x64/Release/data/img to the darknet/data/img/ folder (make the img folder if you dont have any) after that copy to darknet/data  "obj.names","train.txt","obj.data" from the Yolo_mark directory. Also copy the yolo.cfg into the cfg of the darknet

Step 11: in the copied yolo.cfg make sure you change the classes to the number of classes you have, apart from that set the last filter section to (classes+5)*5

Step 12: Run the training

Step 13: After the training you will get a backup folder in the darknet directory where you Yolo_final.weights use this weights, the yolo.cfg to run detection

Step 14: Have a nice day :-)

------------------------------------------------------------------------------------------------------------------------

## Batch Rename

In general it is a good practice to name your images and the coresponding .txt files in a sequential manner, for this purpose place the rename.sh script in your directory and run the script make sure to replace the .jpg and .txt according what file type you want to change.

Once you have renamed the images and .txt this will be contradictory to your train.txt take the contents in train.txt to a excel and sequentially increase the path to the number of images you have. Then run the training process.

                ./darknet detector train cfg/obj.data cfg/yolo-obj.cfg darknet19_448.conv.23


---------------------------------------------------------------------------------------------------------------------------

## Running with darkflow (a.k.a running as a python script)

Step 1 : clone the darkflow https://github.com/thtrieu/darkflow and follow installation instructions mentioned in the link

Step 2 : create a bin folder in the darkflow

Step 3 : place the newly generated Yolo_final.weights into the bin

Step 4 : place the yolo.cfg into the darkflow/cfg

Step 5 : replace the labels.txt with the number of labels or objects you are detecting  

Step 6 : if an offset error is happening, follow this link https://github.com/thtrieu/darkflow/issues/107 

step 7 : clone the video.py from this repo place it in the darkflow repo

step 8 : Run the video.py

step 9 : If you wish to capture image and then detect clone the master.py and place it your darkflow repo

step 10 : Have a nice day :)
