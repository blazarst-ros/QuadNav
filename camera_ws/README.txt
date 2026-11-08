一：综述：
当前工作区包含相机 SDK，以及将 SDK 数据发布为 ROS 2 消息的驱动。
source结构如下：
/nest/quadNav/camera_ws/src/OrbbecSDK_ROS2/
├── orbbec_camera/          ROS 2 相机驱动
│   ├── SDK/
│   │   ├── include/       SDK 的 C/C++ 头文件
│   │   └── lib/arm64/     ARM64 动态库
│   ├── src/               驱动源码
│   └── launch/            相机启动配置
├── orbbec_camera_msgs/     自定义消息和服务
└── orbbec_description/     相机描述资源



二：启动指南（按需求开启各个内容，减少不必要的计算消耗，避免温度过热）：

Terminator 1:

cd Workstation/quadNav/camera_ws

source /nest/quadNav/setup_vision.bash
export ROS_DOMAIN_ID=99


ros2 launch orbbec_camera gemini.launch.xml \
  enable_color:=true \
  enable_depth:=true \
  enable_ir:=false\
  enable_point_cloud:=false\
  enable_colored_point_cloud:=false\
  depth_registration:=true\
  tf_publish_rate:=0.0
  
  
  

Terminator 2:

source /opt/ros/humble/setup.bash
source /nest/quadNav/camera_ws/install/setup.bash
export ROS_DOMAIN_ID=99

#ros2 topic list -t
rviz2


export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
