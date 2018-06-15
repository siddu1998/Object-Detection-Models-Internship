# Internship Journal and Documentation Invento Robotics
Documentation and code snippets

# Computer Vision
Install OpenCV installation of openCV can be done through by simpy running this script. So clone this git link and then store it as install_opencv.sh.  https://github.com/milq/milq/blob/master/scripts/bash/install-opencv.sh. simply go the location and hit ./install_opencv.sh

# Mathematical Assistance required 
## Pangolin Installtion : 
https://github.com/stevenlovegrove/Pangolin  make sure you build well. Incase or error persists pull from branch the second active branch (glsl-annotation). In master brach if the error claims to have have not declared, this is becaise of the issue in the master brach feel free to go into the shown file, and uncomment certain commented lines.

## Eigen Installtion  
 ##### Installation 2 methods: 
http://eigen.tuxfamily.org/index.php?title=Main_Page go to this page and downlaod the latest version                           and place it in your home directory as a matter of fact anywhere you like.
If you are a git lover well clone it from https://github.com/eigenteam/eigen-git-mirror

# Installing ROS : 
ROS -> Robotic Operating System : An applicative OS over linux 

 Please use Ubuntu 16.0.4 if you are willing to make life easier.Recommended installation version ROS-Kinetic 
http://wiki.ros.org/kinetic/Installation/Ubuntu is the link you should be referring to if this does not work, this might be because of broken packages. Please make sure you have ticked the universal and restricted and multiverse options in your Ubuntu software centre. 
 Not recommended if the normal installation does not work you can try to build from source (all the best)
 
 Now very important files are in your system is your bashrc, nothing to do yet, but to view the bashrc remember it would be in the home directory and will be hidden. If you are willing to see it then ctrl+H will show all the hidden files and from then on you are free to edit. 

## Mission Applying Monocular camera and mathematical tools to develop 2D maps for localization and navigation using ROS Arduino serial. This allows the elimination of LIDR and brings down the cost of production
Once you are sure you have ROS installed correctly the following steps are to be taken and is recommended you follow this way to avoid any error.

step 1 : create a catkin workspace. A catkin workspace will act as your ROS environment and allow you to implement ROS programms within the workspace. Let the wokspace contain one /src folder. So to make it simple please follow the commands in the http://wiki.ros.org/catkin/Tutorials/create_a_workspace. (Only till creation of the workspace)

step 2: Once you have the desired directory structure, please comeback to the parent folder that is catkin_ws from catkin_ws/src and hit catkin_make. This should make your workspace ready for ros. So if you further go into the catkin_ws you will see two new folders called build and devel. Now inside the devel folder you would see a setup.bash file. source this bash file. the commnd you would want to use is.

                        source devel/setup.bash
                        
NOTE : Now we want to build the ORB_SLAM2 implementation in a ROS workspace. The ORB slam2 contains different versions in which we can use, the version we would like to use is the monocular version. A monocular version is a simple webcam. So to get a theoretical understanding of what we are about to do, ROS runs on communication of nodes using subscriber and publisher methods on a particular topic which passes only a certain type of messages. Broadly we have the camera node, the monocular slam node, and the gazebo node to vizualize what is going on. ROS commands are such that they have to be run on different terminals. 

step 3: make catkin_ws/src as you current directory and clone the ORB_SLAM2 into this folder from https://github.com/raulmur/ORB_SLAM2. Now navigate into the src/ORB_SLAM2 and you should see two files ./build.sh and ./build_ros.sh      Now if  you have your Eigen and Pagolin set right run ./build.sh and you should see some magic happening on the terminal. (TIP: If your computer is not an 8GB powered system, then go to the build.sh and remove -j after make else your system might hand. The reason for this is googlable). Now to build the the ROS version of ORB_SLAM2 there is a really critical step you have to do. Go to the bashrc we discussed earlier and add the following line
                        
                export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:PATH/ORB_SLAM2/Examples/ROS
If you have been following this instructions then replace PATH with catkin_ws/src    and after this source the bashrc file using the command source ~/.bashrc

step 4. Now with the completion of step 3, go to the catkin_ws/src/ORB_SLAM2 and run ./build_ros.sh and wait for the magic to happen. Had you followed the instructions everything should have worked fine, apart from the fact some missing libraries or liboost-dev errors. Incase you find the boost errors, it is pretty simple just google it and the first link you get would help you solve the issue and you can build again.

step 5: Now you want to run and generate the 3D map, once you generate the 3D map you would also like to generate a 2D map using the concept of projections. Before that make sure you have your pointcloud.h libraries within your system. Now the complex part comes, clone this repo (on the desktop) https://github.com/abhineet123/ORB_SLAM2 and replace your catkin_ws/src/ORB_SLAM2/include and catkin_ws/src/ORB_SLAM2/src with the /include and /src from the newly cloned repo. After this please run ./build.sh and ./build_ros.sh again and this time in case you get #include <cv/cvbridge.h> error go the mentioned file and feel free to remove the header.

step6: To construct the 2D map, Please follow the following steps. Before you do anything make sure you have enough memory left minimum 50GB left in your computer. First of all take execute the below commands to make a place where all your bag of word models are created and stored (NOTE: IT IS GOING TO CONSUME HUGE AMOUNT OF SPACE ONCE THINGS START FITTING IN).
                                      
                                      mkdir ~/bagfiles
                                      cd ~/bagfiles
step 7: In your /opt/ros/share make sure you have usb_cam module installed else install 
                                   
                                   sudo apt-get install ros-kinetic-usb-cam
Now once you have this open /opt/ros/share/usb_cam/launch and edit video0 to video1 if you are willing to use an external camera. If you are unable to do it, make sure you give the required permissions to edit this file using chmod commands.


step 8: open 1 terminal and start the roscore, so in the newly opened terminal type 
                                           
                                           roscore
step 9: Now start the camera node in a new terminal 
                                         
                               roslaunch usb_cam usb_cam-test.launch
                               
step 10: Once you have the camera running you are ready to run the rosbag and start the ORB_SLAM2 based on ROS.
In a new terminal  
                                  
                                                rosbag record -a
In a new terminal 
                   
             rosrun ORB_SLAM2 Monopub Vocabulary/ORBvoc.txt Examples/Monocular/mono.yaml -1
             
step 11: Now since you have the the rosbag ready to collect all the the data and create the bag of words model you have to create a subscriber to the ORB_SLAM which publishes data to the Rosbag. (feel free to change the parameters these are camera dependent and are calibrated to Logitech/iBall older versions) In a new terminal
                                       
                                 rosrun ORB_SLAM2 Monosub 30 2 6 -6 6 -6 0.55 0.50 1 5

step 12: You can play the rosbag 
                                     
                                  rosbag play YOUR_ROS_BAG_NAME.bag -r 0.5
              
In the above way you can get your ORB SLAM2 running on ROS and generate the map.


# SLAM and Navigation using Xbox 360 kinect

## Localization 
Localization is a method where the the robot knows its relative position in a given 2D map. The 2D Map generated using ORB-SLAM2 can be used but the issue is when you want to deploy for production the accuracy does not meet industry standards. Hence We also discuss SLAM and Mapping using Kinect. 

## Gazebo 
Before we move onto the actual bot it would be better if we can simulate the navigation and mapping. Gazebo is environment software which allows us to create situations where we would like to simulate the robot. Installing gazebo is pretty simple and straight forward. Visit Gazebo's official website and follow the single line instruction.

## Turtlebot
Since we are specific to using kinect from the Xbox 360, Turtlebot 2 would be perfect for our simulation. Kinect offers depth-sense image, but the topic ROS navigation stack subscribes to and uses in the navigation stack is Laser Scan data. Hence the way we will be looking to move is convert kinect based data to laser based scan data.

## Conversion launch file
Execute the following commands to get the conversion node running.

                                               cd catkin_ws
                                               cd src
and here create a catkin package

                                               create_catkin_pkg pc2l
                                               cd .. 
                                               catkin_make
                                               source devel/setup.bash
                                               
Now go into the pc2l package and create a new folder called launch and copy the contents of start.launch which you will find in the repo.
 
## Procudure

                                       cd catkin_ws
                                       cd src
                                       roscore
                                      (in a new terminal)
                                      roslaunch pc2l start.launch
                                      
                                      (in a new termianl)
                                      roslaunch turtlebot_gazebo turtlebot_world.launch
                                      
                                      (in a new terminal)
                                      roslaunch turtlebot_teleop keyboard_teleop.launch
                                      THE ABOVE TERMINAL WILL ALLOW YOU TO NAVIGATE ROUND in GAZEBO
                                      
                                      (in a new terminal)
                                      roslaunch turtlebot_gazebo gmapping_demo.launch
                                      
                                      (in a new terminal)
                                      roslaunch turtlebot_rviz_launchers view_navigation.launch
                                      THIS OPENS UP AN RVIZ where you can visualize your map
                                      here set laserscan topic to camera/scan 
                                      
                                      (In a new terminal)
                                      In case you want to save the map formed               
                                      rosrun map_server map_saver -f <your map name> 
                                      the above generates .pgm and .yaml file
                                      
                                      To Localize and navigate in the map
                             roslaunch turtlebot_gazebo amcl_demo.launch map_file:=<full path to your map YAML file>
                             
                             click 2D pose estimate to localize
                             click set Nav Goal and point towards where you want to go and this eventually allows the robot to auntomously move to the location
                             
