# OpenCV 4.10 workspace unification

Goal: remove OpenCV 4.5/4.10 mixing from the QuadNav camera and RTAB-Map processes.
Architecture: build the official Humble cv_bridge and image_geometry packages in camera_ws against /usr/local/lib/cmake/opencv4, then reconfigure dependent workspace packages against that overlay. Preserve system ROS and OpenCV installations and existing local changes.

- [ ] Fetch the official vision_opencv humble branch into camera_ws/src.
- [ ] Compile cv_bridge, image_geometry and the camera with explicit OpenCV_DIR.
- [ ] Reconfigure and build dependent RTAB-Map packages against camera_ws.
- [ ] Verify ldd and actual process mappings contain only OpenCV 4.10 for the tested camera/SLAM chain.
- [ ] Repeat RGB-D conversion, camera stream and RViz point-cloud regression checks; stop diagnostic processes.
- [ ] Provide reproducible setup/build commands and validation evidence.

Limits: no removal or replacement of /opt/ros or system OpenCV packages; no claim that ABI consistency alone fixes every odometry issue. Python cv2 and unrelated ROS binaries can still use their system versions.
