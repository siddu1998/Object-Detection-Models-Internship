from darkflow.net.build import TFNet
import cv2

#perform fruit capture
def capture_customer_with_fruit():
    cap = cv2.VideoCapture(0)
    ret,frame = cap.read()
    while(True):
        cv2.imshow('img1',frame) #display the captured image
        cv2.imwrite('c1.jpg',frame)
        cv2.destroyAllWindows()
        break

    cap.release()




#perform fruit detection
def detect_fruit():
    capture_customer_with_fruit()
    options = {"model": "cfg/fruits.cfg", "load": "bin/fruits.weights", "threshold": 0.50}

    tfnet = TFNet(options)
    list_of_fruits_with_confidence=[]
    imgcv = cv2.imread("./c1.jpg")
    results = tfnet.return_predict(imgcv)
    for result in results:
        list_of_fruits_with_confidence.append((result['label'],result['confidence']))
    return list_of_fruits_with_confidence




answers=detect_fruit()
print(answers)
