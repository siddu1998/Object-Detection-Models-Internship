from darkflow.net.build import TFNet
import cv2
from flask import Flask,jsonify

#Load model
previous_fruit = ""
model_name="fruits"

options_fruits = {
            "model": "fruits.cfg",
            "load": "fruits.weights",
            "threshold": 0.50,
            "labels":"fruits.txt"
          }

tfnet_fruits = TFNet(options_fruits)





#perform single image capture
def capture_single_image():
    cap = cv2.VideoCapture(0)
    ret,frame = cap.read()
    while(ret): # (ret) Acknowledging whether the image is captured or not
        #cv2.imshow('img1',frame) #display the captured image
        cv2.imwrite('c1.jpg',frame)
        cv2.destroyAllWindows() #destroy all windows(good practice)
        break #since only one image needed break the loop and come out TODO: can be optamized further

    cap.release()

    imgcv = cv2.imread("./c1.jpg")
    results_fruits= tfnet_fruits.return_predict(imgcv)
    return results_fruits




app=Flask(__name__)
@app.route('/get_{}'.format(model_name),methods=['GET'])
def get_fruit():
    global previous_fruit
    results=capture_single_image()
    classes_detected = "No {} detected".format(model_name)

    if len(results)>0:
        classes_detected=results[0]['label']
        print("***************************************************")
        print("previous_fruit:" + previous_fruit)
        print("classes_detected:"+ classes_detected)
        previous_fruit=classes_detected
        print("Updated previous_fruit:" + previous_fruit)
        print("***************************************************")
    return classes_detected

app.run(host='0.0.0.0',port = 10000)
