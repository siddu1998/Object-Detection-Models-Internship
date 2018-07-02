## Setting up ROS with Kinect

1. Install dependencies sudo apt install ros-kinetic-freenect-stack

Run the node

2. roslaunch freenect_launch freenect.launch depth_registration:=true

To visulaize the depth scan

3. Run rosrun rviz rviz

4. Set PoinCloud2 topic to /camera/dept_registered/points
