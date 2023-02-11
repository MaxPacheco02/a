#!/usr/bin/env python

import rospy

import cv2 as cv
from cv_bridge import  CvBridge

import numpy as np

from std_msgs.msg import UInt8, Float32MultiArray, Float32
from sensor_msgs.msg import Image
from detection_msgs.msg import CropImages

from filter import Filter

from threading import Thread

class Camara:
    def __init__(self): 
        rospy.init_node('RGB_Filter')

        # self.s1 = rospy.Subscriber('image_raw', Image, self.img_callback) #Recibe el video
        self.s1 = rospy.Subscriber('yolov5/crop_detections', CropImages, self.img_callback)
        
        #self.s2 = rospy.Subscriber('/counter_uInt8',UInt8,self.counter_callback) #Recibe el timer
        
        self.red_mask_pub = rospy.Publisher('/imgview/red', Image, queue_size=10)
        self.green_mask_pub = rospy.Publisher('/imgview/green', Image, queue_size=10)
        self.blue_mask_pub = rospy.Publisher('/imgview/blue', Image, queue_size=10)
        self.white_mask_pub = rospy.Publisher('/imgview/white', Image, queue_size=10)
        self.yellow_mask_pub = rospy.Publisher('/imgview/yellow', Image, queue_size=10)


        self.density_pub = rospy.Publisher('/perc_color', Float32, queue_size=10)
        self.xy_pub = rospy.Publisher('/center', Float32MultiArray, queue_size=10)
        rospy.on_shutdown(self.stop)
        self.bridge = CvBridge()

        self.xlimit = 1280
        self.ylimit = 720

    
    def img_callback(self, data):                
        self.boxes = data.bounds

        self.img = self.bridge.imgmsg_to_cv2(data.image, 'bgr8')

        # if len(self.boxes) == 0:
        #     msg = self.bridge.cv2_to_imgmsg(self.img, 'passthrough')

        #     self.red_mask_pub.publish(msg, "passthrough")
        #     self.green_mask_pub.publish(msg, "passthrough")
        #     self.blue_mask_pub.publish(msg, "passthrough")
        #     self.white_mask_pub.publish(msg, "passthrough")
        #     self.yellow_mask_pub.publish(msg, "passthrough")
            
        #     return

        red_filter = Filter(self.red_msk, self.img.copy())
        green_filter = Filter(self.green_msk, self.img.copy())
        blue_filter = Filter(self.blue_msk, self.img.copy())
        white_filter = Filter(self.white_msk, self.img.copy())
        yellow_filter = Filter(self.yellow_msk, self.img.copy())

        filters = [red_filter, green_filter, blue_filter, white_filter, yellow_filter]

        for box in self.boxes:
            futures = [Thread(target=f.run, args=(box,)) for f in filters]

            [f.start() for f in futures]
            [f.join() for f in futures]

        self.red_mask_pub.publish(self.bridge.cv2_to_imgmsg(red_filter.get_output_img(), "bgr8"))
        self.green_mask_pub.publish(self.bridge.cv2_to_imgmsg(green_filter.get_output_img(), "bgr8"))
        self.blue_mask_pub.publish(self.bridge.cv2_to_imgmsg(blue_filter.get_output_img(), "bgr8"))
        self.white_mask_pub.publish(self.bridge.cv2_to_imgmsg(white_filter.get_output_img(), "bgr8"))
        self.yellow_mask_pub.publish(self.bridge.cv2_to_imgmsg(yellow_filter.get_output_img(), "bgr8"))

    def red_msk(self, img):
        hsv = cv.cvtColor(img, cv.COLOR_BGR2HSV)

        lower_red = np.array([160,50,50])
        upper_red = np.array([180,255,255])

        maskr = cv.inRange(hsv, lower_red, upper_red)

        inv_mask = cv.bitwise_not(maskr)

        eroder = cv.erode(inv_mask, (5, 5), iterations = 6)
        eroder2 = cv.erode(maskr, (5, 5), iterations = 6)

        self.dilater = cv.dilate(eroder, (5, 5),iterations = 6)
        self.dilater2 = cv.dilate(eroder2, (5, 5),iterations = 6)

        return cv.cvtColor(self.dilater, cv.COLOR_GRAY2BGR)

    def green_msk(self, img):
        hsv = cv.cvtColor(img, cv.COLOR_BGR2HSV)

        lower_green = np.array([40, 40, 40])
        upper_green = np.array([70, 255,255])

        maskr = cv.inRange(hsv, lower_green, upper_green)

        inv_mask = cv.bitwise_not(maskr)

        eroder = cv.erode(inv_mask, (5, 5), iterations = 6)
        eroder2 = cv.erode(maskr, (5, 5), iterations = 6)

        self.dilater = cv.dilate(eroder, (5, 5),iterations = 6)
        self.dilater2 = cv.dilate(eroder2, (5, 5),iterations = 6)

        return cv.cvtColor(self.dilater, cv.COLOR_GRAY2BGR)

    def blue_msk(self, img):
        hsv = cv.cvtColor(img, cv.COLOR_BGR2HSV)

        lower_blue = np.array([94, 80, 2])
        upper_blue = np.array([126, 255,255])

        maskr = cv.inRange(hsv, lower_blue, upper_blue)

        inv_mask = cv.bitwise_not(maskr)

        eroder = cv.erode(inv_mask, (5, 5), iterations = 6)
        eroder2 = cv.erode(maskr, (5, 5), iterations = 6)

        self.dilater = cv.dilate(eroder, (5, 5),iterations = 6)
        self.dilater2 = cv.dilate(eroder2, (5, 5),iterations = 6)

        return cv.cvtColor(self.dilater, cv.COLOR_GRAY2BGR)

    def white_msk(self, img):
        hsv = cv.cvtColor(img, cv.COLOR_BGR2HSV)

        lower_white = np.array([0, 0, 0])
        upper_white = np.array([0, 0, 255])

        maskr = cv.inRange(hsv, lower_white, upper_white)

        inv_mask = cv.bitwise_not(maskr)

        eroder = cv.erode(inv_mask, (5, 5), iterations = 6)
        eroder2 = cv.erode(maskr, (5, 5), iterations = 6)

        self.dilater = cv.dilate(eroder, (5, 5),iterations = 6)
        self.dilater2 = cv.dilate(eroder2, (5, 5),iterations = 6)

        return cv.cvtColor(self.dilater, cv.COLOR_GRAY2BGR)

    def yellow_msk(self, img):
        hsv = cv.cvtColor(img, cv.COLOR_BGR2HSV)

        lower_yellow = np.array([20, 100, 100])
        upper_yellow = np.array([30, 255, 255])

        maskr = cv.inRange(hsv, lower_yellow, upper_yellow)

        inv_mask = cv.bitwise_not(maskr)

        eroder = cv.erode(inv_mask, (5, 5), iterations = 6)
        eroder2 = cv.erode(maskr, (5, 5), iterations = 6)

        self.dilater = cv.dilate(eroder, (5, 5),iterations = 6)
        self.dilater2 = cv.dilate(eroder2, (5, 5),iterations = 6)

        return cv.cvtColor(self.dilater, cv.COLOR_GRAY2BGR)

    def center_xy(self):
        msg = Float32MultiArray()
        Mr = cv.moments(self.dilater)

        msg.data = [int(Mr["m10"] / Mr["m00"]), int(Mr["m01"] / Mr["m00"])] if Mr["m00"] != 0 else [int(self.xlimit/2), int(self.ylimit/2)]

        self.xy_pub.publish(msg)
    
    def red_density(self):
        self.density_pub.publish(np.sum(self.dilater2)/(self.xlimit*self.ylimit*255))

    def stop(self):
        print('Killing Color id')
        
    def run(self):
        rospy.spin()

if __name__ == '__main__':
    cc = Camara()
    
    try:
        cc.run()
    except:
        pass
