# Install script for directory: /Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/src/detection_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/detection_msgs/msg" TYPE FILE FILES
    "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/src/detection_msgs/msg/BoundingBox.msg"
    "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/src/detection_msgs/msg/BoundingBoxes.msg"
    "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/src/detection_msgs/msg/CropImages.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/detection_msgs/cmake" TYPE FILE FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/detection_msgs/catkin_generated/installspace/detection_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/devel/include/detection_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/devel/share/roseus/ros/detection_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/devel/share/common-lisp/ros/detection_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/devel/share/gennodejs/ros/detection_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/Users/saucesaft/opt/miniconda3/envs/noetic/bin/python3.9" -m compileall "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/devel/lib/python3.9/site-packages/detection_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.9/site-packages" TYPE DIRECTORY FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/devel/lib/python3.9/site-packages/detection_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/detection_msgs/catkin_generated/installspace/detection_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/detection_msgs/cmake" TYPE FILE FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/detection_msgs/catkin_generated/installspace/detection_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/detection_msgs/cmake" TYPE FILE FILES
    "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/detection_msgs/catkin_generated/installspace/detection_msgsConfig.cmake"
    "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/build/detection_msgs/catkin_generated/installspace/detection_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/detection_msgs" TYPE FILE FILES "/Users/saucesaft/Documents/Code/vanttec/percepcion/yolo_color_detection_algorithm/src/detection_msgs/package.xml")
endif()

