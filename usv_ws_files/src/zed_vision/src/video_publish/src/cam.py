#!/usr/bin/env python

import time

import cv2
from cv_bridge import CvBridge, CvBridgeError

import rospy
from sensor_msgs.msg import Image

pub = rospy.Publisher('image_raw', Image, queue_size=10)

rospy.init_node('cam', anonymous=True)

bridge = CvBridge()

    
# video = cv2.VideoCapture(rospy.get_param('/video/video_file'))
video = cv2.VideoCapture("IMG_9708.MOV")

(major_ver, minor_ver, subminor_ver) = (cv2.__version__).split('.')

fps = 0

if int(major_ver)  < 3 :
    fps = video.get(cv2.cv.CV_CAP_PROP_FPS)
    rospy.loginfo("Mandando video a nodo: {0} FPS".format(fps))
else :
    fps = video.get(cv2.CAP_PROP_FPS)
    rospy.loginfo("Mandando video a nodo: {0} FPS".format(fps))

time_to_sleep = 1/fps

while True:

    ret, frame = video.read()

    if ret == True:
        
        img = bridge.cv2_to_imgmsg(frame, "bgr8")

        pub.publish(img)
    else:
        break

    time.sleep(time_to_sleep)

video.release()