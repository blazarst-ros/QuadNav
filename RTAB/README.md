
source /nest/quadNav/setup_vision.bash
export ROS_DOMAIN_ID=99

cd Workstation/quadNav/RTAB
ros2 launch rtabmap_launch rtabmap.launch.py \
  frame_id:=camera_link \
  rgb_topic:=/camera/color/image_raw \
  depth_topic:=/camera/depth/image_raw \
  camera_info_topic:=/camera/color/camera_info \
  approx_sync:=true \
  approx_sync_max_interval:=0.02 \
  qos:=1 \
  use_sim_time:=false \
  rtabmap_viz:=true \
  rviz:=false \
  database_path:=/nest/quadNav/RTAB/maps/rviz_$(date +%Y%m%d_%H%M%S).db



 export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
