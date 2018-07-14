import freenect
import cv2
import numpy as np
from functions import *



def nothing(x):
    pass

#cv2.namedWindow('edge')
cv2.namedWindow('Video')
cv2.moveWindow('Video',5,5)
cv2.namedWindow('Navig',cv2.WINDOW_AUTOSIZE)
cv2.resizeWindow('Navig',400,100)
cv2.moveWindow('Navig',700,5)
#cv2.namedWindow('Fin')
#cv2.namedWindow('Win')
kernel = np.ones((5, 5), np.uint8)


print('Press ESC in window to stop')
cv2.createTrackbar('val1', 'Video', 37, 1000, nothing)
cv2.createTrackbar('val2', 'Video', 43, 1000, nothing)
cv2.createTrackbar('bin', 'Video',20,50,nothing)
cv2.createTrackbar('erode', 'Video',4,10,nothing)#after plenty of testing
imn=cv2.imread('blank.bmp')
im0=cv2.imread("Collision Alert.bmp")
im1=cv2.imread("VCP Reverse.bmp")
#cv2.createTrackbar('dilate', 'edge',0,10,nothing)
def pretty_depth(depth):
    np.clip(depth, 0, 2**10 - 1, depth)
    depth >>= 2
    depth = depth.astype(np.uint8)
    return depth
while 1:
    imm=cv2.imread('blank.bmp')
    cv2.imshow('Navig',imn)
    flag120=[1,1,1,1]
    flag140=[1,1,1,1]
    f14=0
    f12=0
    f10=0
    f8=0
    dst=pretty_depth(freenect.sync_get_depth()[0])
    #cv2.flip(dst,0,dst)
    #cv2.flip(dst,1,dst)
    cv2.rectangle(dst,(0,0),(640,480),(40,100,0),2)
    binn=cv2.getTrackbarPos('bin', 'Video')
    e=cv2.getTrackbarPos('erode', 'Video')
    dst=(dst/binn)*binn
    dst=cv2.erode(dst,kernel,iterations=e)

    v1=37
    v2=43
    v1 = cv2.getTrackbarPos('val1', 'Video')
    v2 = cv2.getTrackbarPos('val2', 'Video')
    edges = cv2.Canny(dst, v1, v2)

    _,contours, hierarchy = cv2.findContours(edges, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    cv2.drawContours(dst, contours, -1, (0, 0, 255), -1)


    cv2.createTrackbar('epsilon','Video', 1, 100, nothing)
    ep=cv2.getTrackbarPos('epsilon','Video')
    cv2.createTrackbar('spacing', 'Video', 30, 100, nothing)
    spac=cv2.getTrackbarPos('spacing', 'Video')
    (rows,cols)=dst.shape
    for i in range(rows/spac):

        for j in range(cols/spac):

            cv2.circle(dst, (spac*j,spac*i), 1, (0, 255, 0), 1)
            if(dst[spac*i,spac*j]==80):
                f8=1
                cv2.putText(dst,"0",(spac*j,spac*i),cv2.FONT_HERSHEY_PLAIN,1,(0,200,20),2)
                cv2.putText(dst,"Collision Alert!",(30,30),cv2.FONT_HERSHEY_TRIPLEX,1,(2),1)
                imn=cv2.imread("Collision Alert.bmp")#arduino
                cv2.imshow('Navig',imn)

            if (dst[spac*i,spac*j]==100):
                f12=1
                cv2.putText(dst, "2", (spac*j, spac*i), cv2.FONT_HERSHEY_PLAIN, 1, (0, 200, 20), 2)
                flag120 = RegionCheck(spac*j, flag120)
                if(f8==0 and f10==0):
                    imgshow(flag120,120,imn,'Navig')
            if (dst[spac*i,spac*j]==140):
                f14=1
                cv2.putText(dst,"3",(spac*j,spac*i),cv2.FONT_HERSHEY_PLAIN,1,(0,200,20),1)
                flag140 = RegionCheck(spac*j, flag140)
                if(f8==0 and f10==0 and f12==0):
                    imgshow(flag140,140,imn,'Navig')
            if (dst[spac*i,spac*j]==160):
				cv2.putText(dst,"4",(spac*j,spac*i),cv2.FONT_HERSHEY_PLAIN,1,(0,200,20),1)
            if (dst[spac*i,spac*j]==180):
				cv2.putText(dst,"5",(spac*j,spac*i),cv2.FONT_HERSHEY_PLAIN,1,(0,200,20),1)
            if (dst[spac*i,spac*j]==200):
				cv2.putText(dst,"6",(spac*j,spac*i),cv2.FONT_HERSHEY_PLAIN,1,(0,200,20),1)
            if (dst[spac*i,spac*j]==220):
				cv2.putText(dst,"7",(spac*j,spac*i),cv2.FONT_HERSHEY_PLAIN,1,(0,200,20),1)
            if(flag120[1:3]==[1, 1] and f12==1):
                cv2.putText(dst," frwd",(325,90),cv2.FONT_HERSHEY_DUPLEX,1,(2),1)
            elif(flag120[2:4]==[1, 1] and f12==1):
		        cv2.putText(dst," right",(325,90),cv2.FONT_HERSHEY_DUPLEX,1,(2),1)
            elif(flag120[0:2]==[1, 1] and f12==1):
		        cv2.putText(dst," left",(325,90),cv2.FONT_HERSHEY_DUPLEX,1,(2),1)
            elif(f12==1):
		        cv2.putText(dst," back",(325,90),cv2.FONT_HERSHEY_DUPLEX,1,(2),1)
            cv2.line(dst,(130,0),(130,480),(0),1)
            cv2.line(dst,(320,0),(320,480),(0),1)
            cv2.line(dst,(510,0),(510,480),(0),1)
            cv2.imshow('Video', dst)

       	    if(cv2.waitKey(1) & 0xFF == ord('b')):
                break
