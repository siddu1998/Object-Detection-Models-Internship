from darkflow.net.build import TFNet
import cv2
import uuid
from flask import Flask,jsonify


#Load model
model_name='fruits'

options = {
            "model": "cfg/{}.cfg".format(model_name),
            "load": "bin/{}.weights".format(model_name),
            "labels":"{}.txt".format(model_name),
            "threshold": 0.50
          }
tfnet = TFNet(options)


#perform single image capture
def capture_single_image():
    cap = cv2.VideoCapture(0)
    ret,frame = cap.read()
    while(True):
        #cv2.imshow('img1',frame) #display the captured image
        cv2.imwrite('c1.jpg',frame)
        cv2.destroyAllWindows()
        break

    cap.release()

    imgcv = cv2.imread("./c1.jpg")
    results = tfnet.return_predict(imgcv)
    return(results)







app=Flask(__name__)

@app.route('/get_{}'.format(model_name),methods=['GET'])
def get_fruit():
    results=capture_single_image()
    classes_detected = "No {} detected".format(model_name)

    if len(results)>0:
        classes_detected=results[0]['label']

    return classes_detected

app.run(host='0.0.0.0',port = 10000)
