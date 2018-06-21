## Training own set of Images for detection using Yolo

Step 1: Get a lot of images

Step 2: Clone darknet 

Step 3: Clone Yolo-Mark

Step 5: place the images in Yolo-Mark/x64/Release/data/img/

Step 6: Navigate to the Yolo-Mark/x64/Release/data/ and change the obj.data to the number of classes you have

Step 7: Open the obj.name in Yolo-Mark/x64/Release/data/ and write down the names of your class

Step 8: navigate to the Yolo-Mark/ and run ./linux_mark.sh if errors pop it is either because you have failed to make the folder or you have not given permission to make the .sh executable

Step 9: Keep drawing bounding boxes based on the location of object in the image, and make sure the class for which you are drawing is correctly reflected on the GUI application

Step 10: TRAINING! copy the contents in the Yolo-Mark/x64/Release/data/img to the darknet/data/img/ folder (make the img folder if you dont have any) after that copy to darknet/data  "obj.names","train.txt","obj.data" from the Yolo_mark directory. Also copy the yolo.cfg into the cfg of the darknet

Step 11: in the copied yolo.cfg make sure you change the classes to the number of classes you have, apart from that set the last filter section to (classes+5)*5

Step 12: Run the training

Step 13: After the training you will get a backup folder in the darknet directory where you Yolo_final.weights use this weights, the yolo.cfg to run detection

Step 14: Have a nice day :-)
