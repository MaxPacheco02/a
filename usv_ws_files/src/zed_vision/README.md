# zed_vision ヽ༼ຈل͜ຈ༽ﾉ
Repo for the zed YOLO V5 Implementation for the 2023 RoboBoat competition tasks

## how to use ヽ(｀Д´)ﾉ
- **run yolo**
    - `roslaunch src/yolov5_ros/launch/yolov5.launch`
- **run color detections**
    - `rosrun filtros RGB.py`
- now that you have that running, send the frames you wish to detect to `/image_raw` or the topic you choosed on the launch file
