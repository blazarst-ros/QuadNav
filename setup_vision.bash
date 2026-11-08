# Source this file before running QuadNav camera or RTAB-Map nodes.
_quadnav_vision_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source /opt/ros/humble/setup.bash || return $?
source "${_quadnav_vision_root}/camera_ws/install/setup.bash" || return $?
source "${_quadnav_vision_root}/RTAB/install/local_setup.bash" || return $?
# Keep the OpenCV 4.10 adapters and image transport plugins first at runtime.
source "${_quadnav_vision_root}/camera_ws/install/local_setup.bash" || return $?
export ROS_DOMAIN_ID="${ROS_DOMAIN_ID:-99}"
unset _quadnav_vision_root
