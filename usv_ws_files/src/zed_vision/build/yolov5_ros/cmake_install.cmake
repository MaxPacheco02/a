# Install script for directory: /Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/src/yolov5_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/saucesaft/opt/miniconda3/envs/noetic/bin/llvm-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/yolov5_ros/catkin_generated/installspace/yolov5_ros.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolov5_ros/cmake" TYPE FILE FILES
    "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/yolov5_ros/catkin_generated/installspace/yolov5_rosConfig.cmake"
    "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/yolov5_ros/catkin_generated/installspace/yolov5_rosConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolov5_ros" TYPE FILE FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/src/yolov5_ros/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/yolov5_ros" TYPE PROGRAM FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/yolov5_ros/catkin_generated/installspace/detect.py")
endif()

