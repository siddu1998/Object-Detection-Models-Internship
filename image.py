from darkflow.net.build import TFNet
import cv2
import pyttsx

engine = pyttsx.init()

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
    #capture_customer_with_fruit()
    options = {"model": "cfg/fruits.cfg", "load": "bin/fruits.weights", "threshold": 0.50}

    tfnet = TFNet(options)
    list_of_fruits_with_confidence=[]
    imgcv = cv2.imread("./c1.jpg")
    results = tfnet.return_predict(imgcv)
    for result in results:
        list_of_fruits_with_confidence.append((result['label'],result['confidence']))
    return list_of_fruits_with_confidence[0][0]




# answers=detect_fruit()
# print(answers[0][0])

#Give appropriate stories regarding the detected
def give_applications():
    table_of_applications={'mango':'Ripe yellow Alphansos exclusively grown with absolutley no pesticides',
                           'apple':'The Swiss Apple is world famous for its exotic taste, a pinch of salt will blow your mind away',
                           'banana':'If you play sport and are in need of instant energy then you have the perfect fruit in your hand! Munch through to feel speed in your blood'}
    engine.say(table_of_applications[detect_fruit()])
    engine.runAndWait()


give_applications()
