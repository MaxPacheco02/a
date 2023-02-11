#!/usr/bin/env python

import rospy

from sensor_msgs.msg import Image
from detection_msgs.msg import CropImages

import numpy as np

import cv2
from cv_bridge import CvBridge, CvBridgeError

pub = rospy.Publisher('filter_img', Image, queue_size=10)

bridge = CvBridge()

def callback(data):

    to_alter = bridge.imgmsg_to_cv2(data.image, desired_encoding="bgr8")

    #print(data.bounds)

    for box in data.bounds:
        to_alter[box.ymin:box.ymax, box.xmin:box.xmax] = ~to_alter[box.ymin:box.ymax, box.xmin:box.xmax]

    pub.publish(bridge.cv2_to_imgmsg(to_alter, "bgr8"))


    #cv2.imshow("img :)", ros_numpy.numpify(data.image))
    #print(data.bounds)

def listener():
    rospy.init_node('bounding_box_analyzer')

    rospy.Subscriber('yolov5/crop_detections', CropImages, callback)

    rospy.spin()

if __name__ == '__main__':
    listener()