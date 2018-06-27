from darkflow.net.build import TFNet
import cv2
import uuid


#perform single image capture
def capture_single_image():
    cap = cv2.VideoCapture(0)
    ret,frame = cap.read()
    while(True):
        cv2.imshow('img1',frame) #display the captured image
        cv2.imwrite('c1.jpg',frame)
        cv2.destroyAllWindows()
        break

    cap.release()




#perform object detection based on class on of objects
def detect_object_in_image(class_of_objects):

    #Open Camera and Capture Single Image
    capture_single_image()

    # Weights file dict based on to detect objects class
    weights_dict={"liquor":"liquor.weights", "fruits":"fruits.weights"}

    # config file dict based on to detect objects class
    cfg_dict={"liquor":"liquor.cfg", "fruits":"fruits.cfg"}

    #Load required files for detection
    options = {
               "model": "cfg/{}".format(cfg_dict[class_of_objects]),
               "load": "bin/{}".format(weights_dict[class_of_objects]),
               "threshold": 0.5
              }
    tfnet = TFNet(options)
    list_of_fruits_with_confidence=[]
    imgcv = cv2.imread("./c1.jpg")
    results = tfnet.return_predict(imgcv)
    for result in results:
        list_of_fruits_with_confidence.append((result['label'],result['confidence']))

    #return what object
    return list_of_fruits_with_confidence[0][0]



#step 1 --> generate uuid
def generate_uuid():
    return uuid.uuid4()
#step 2









# Object detection Perform
answers=detect_object_in_image("fruits")
