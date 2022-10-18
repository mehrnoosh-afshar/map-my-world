#!/bin/sh
export TURTLEBOT_3D_SENSOR=kinect
xterm -e "roslaunch my_robot world.launch" &
sleep 5
xterm -e "roslaunch my_robot mapping.launch" &
sleep 5
xtrem -e "rosrun teleop_twist_keyboard teleop_twist_keyboard.py"
sleep 5
xterm -e "rosrun wall_follower wall_follower" &
