import time, sys, os
import cv2


def CreateVideoimages(videopath, imagefolder,orb):

    print("capuring video")
    cap = cv2.VideoCapture(videopath) 

    fps = cap.get(cv2.CAP_PROP_FPS) 
    if fps != fps or fps <=1e-2:
        print("Warning: can't get fps")
    else:
        print("fps achieved succesfull: fps = "+ str(fps))
    
    cv2.startWindowThread()
    cv2.namedWindow('img', cv2.WINDOW_NORMAL)

   
    if not os.path.exists(imagefolder):
        os.makedirs(imagefolder)

 
    if orb:
        print("Opening textfile")
        rgbtxtloc = imagefolder[:-3] + "/rgb.txt"
        textfile = open(rgbtxtloc,'w')

    print("Starting creating imgs")
    newframeavailable = True 
    frame_id = 0

    while(newframeavailable): 
        timestamp = cap.get(cv2.CAP_PROP_POS_MSEC) 
        newframeavailable, frame = cap.read() 
        if not newframeavailable: 
            break 
        
        frame_id += 1 
        imagename = imagefolder + "/frame{0}.jpg".format(frame_id)
        written = cv2.imwrite(imagename , frame)
        if not written:
            print("Writing frame number " + str(frame_id) + " failed")

        if orb: 
            textfile.write(str(timestamp/1000) + " rgb/frame{0}.jpg\n".format(frame_id))

        cv2.imshow('img',frame) 
        cv2.waitKey(1)
    
    print("Done creating images, closing up...")
    cv2.destroyAllWindows() 
    cap.release()  
    if orb: 
        textfile.close()


if len(sys.argv) == 3: 
    videopath = sys.argv[1]
    imagefolder = sys.argv[2]
    CreateVideoimages(videopath, imagefolder, False)
    print("Done")
elif len(sys.argv) == 4 and sys.argv[3] == "orb-slam2": 
    videopath = sys.argv[1]
    imagefolder = sys.argv[2] + "/rgb"
    CreateVideoimages(videopath, imagefolder, True)
    
    print("Done")
else:
    
    print("CHECK ERROR!")