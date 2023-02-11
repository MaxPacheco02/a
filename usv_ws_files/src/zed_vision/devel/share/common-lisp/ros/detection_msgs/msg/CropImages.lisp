; Auto-generated. Do not edit!


(cl:in-package detection_msgs-msg)


;//! \htmlinclude CropImages.msg.html

(cl:defclass <CropImages> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (bounds
    :reader bounds
    :initarg :bounds
    :type (cl:vector detection_msgs-msg:BoundingBox)
   :initform (cl:make-array 0 :element-type 'detection_msgs-msg:BoundingBox :initial-element (cl:make-instance 'detection_msgs-msg:BoundingBox))))
)

(cl:defclass CropImages (<CropImages>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CropImages>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CropImages)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detection_msgs-msg:<CropImages> is deprecated: use detection_msgs-msg:CropImages instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <CropImages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection_msgs-msg:image-val is deprecated.  Use detection_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'bounds-val :lambda-list '(m))
(cl:defmethod bounds-val ((m <CropImages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detection_msgs-msg:bounds-val is deprecated.  Use detection_msgs-msg:bounds instead.")
  (bounds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CropImages>) ostream)
  "Serializes a message object of type '<CropImages>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bounds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bounds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CropImages>) istream)
  "Deserializes a message object of type '<CropImages>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bounds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bounds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'detection_msgs-msg:BoundingBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CropImages>)))
  "Returns string type for a message object of type '<CropImages>"
  "detection_msgs/CropImages")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CropImages)))
  "Returns string type for a message object of type 'CropImages"
  "detection_msgs/CropImages")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CropImages>)))
  "Returns md5sum for a message object of type '<CropImages>"
  "e90b5ef89c1ae9228a2d0f4a892eff2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CropImages)))
  "Returns md5sum for a message object of type 'CropImages"
  "e90b5ef89c1ae9228a2d0f4a892eff2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CropImages>)))
  "Returns full string definition for message of type '<CropImages>"
  (cl:format cl:nil "sensor_msgs/Image image~%BoundingBox[]     bounds~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: detection_msgs/BoundingBox~%# Copyright (c) 2017, Marko Bjelonic, Robotic Systems Lab, ETH Zurich~%# All rights reserved.~%~%# Redistribution and use in source and binary forms, with or without~%# modification, are permitted provided that the following conditions are met:~%#     * Redistributions of source code must retain the above copyright~%#       notice, this list of conditions and the following disclaimer.~%#     * Redistributions in binary form must reproduce the above copyright~%#       notice, this list of conditions and the following disclaimer in the~%#       documentation and/or other materials provided with the distribution.~%#     * Neither the name of the copyright holder nor the names of its~%#       contributors may be used to endorse or promote products derived~%#       from this software without specific prior written permission.~%~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND~%# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE~%# DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY~%# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES~%# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;~%# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND~%# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT~%# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS~%# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%string Class~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CropImages)))
  "Returns full string definition for message of type 'CropImages"
  (cl:format cl:nil "sensor_msgs/Image image~%BoundingBox[]     bounds~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: detection_msgs/BoundingBox~%# Copyright (c) 2017, Marko Bjelonic, Robotic Systems Lab, ETH Zurich~%# All rights reserved.~%~%# Redistribution and use in source and binary forms, with or without~%# modification, are permitted provided that the following conditions are met:~%#     * Redistributions of source code must retain the above copyright~%#       notice, this list of conditions and the following disclaimer.~%#     * Redistributions in binary form must reproduce the above copyright~%#       notice, this list of conditions and the following disclaimer in the~%#       documentation and/or other materials provided with the distribution.~%#     * Neither the name of the copyright holder nor the names of its~%#       contributors may be used to endorse or promote products derived~%#       from this software without specific prior written permission.~%~%# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND~%# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED~%# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE~%# DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY~%# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES~%# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;~%# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND~%# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT~%# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS~%# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.~%~%string Class~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CropImages>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bounds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CropImages>))
  "Converts a ROS message object to a list"
  (cl:list 'CropImages
    (cl:cons ':image (image msg))
    (cl:cons ':bounds (bounds msg))
))
