# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "license_plate_ocr: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(license_plate_ocr_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv" NAME_WE)
add_custom_target(_license_plate_ocr_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "license_plate_ocr" "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(license_plate_ocr
  "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/license_plate_ocr
)

### Generating Module File
_generate_module_cpp(license_plate_ocr
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/license_plate_ocr
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(license_plate_ocr_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(license_plate_ocr_generate_messages license_plate_ocr_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv" NAME_WE)
add_dependencies(license_plate_ocr_generate_messages_cpp _license_plate_ocr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(license_plate_ocr_gencpp)
add_dependencies(license_plate_ocr_gencpp license_plate_ocr_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS license_plate_ocr_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(license_plate_ocr
  "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/license_plate_ocr
)

### Generating Module File
_generate_module_eus(license_plate_ocr
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/license_plate_ocr
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(license_plate_ocr_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(license_plate_ocr_generate_messages license_plate_ocr_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv" NAME_WE)
add_dependencies(license_plate_ocr_generate_messages_eus _license_plate_ocr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(license_plate_ocr_geneus)
add_dependencies(license_plate_ocr_geneus license_plate_ocr_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS license_plate_ocr_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(license_plate_ocr
  "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/license_plate_ocr
)

### Generating Module File
_generate_module_lisp(license_plate_ocr
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/license_plate_ocr
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(license_plate_ocr_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(license_plate_ocr_generate_messages license_plate_ocr_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv" NAME_WE)
add_dependencies(license_plate_ocr_generate_messages_lisp _license_plate_ocr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(license_plate_ocr_genlisp)
add_dependencies(license_plate_ocr_genlisp license_plate_ocr_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS license_plate_ocr_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(license_plate_ocr
  "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/license_plate_ocr
)

### Generating Module File
_generate_module_nodejs(license_plate_ocr
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/license_plate_ocr
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(license_plate_ocr_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(license_plate_ocr_generate_messages license_plate_ocr_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv" NAME_WE)
add_dependencies(license_plate_ocr_generate_messages_nodejs _license_plate_ocr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(license_plate_ocr_gennodejs)
add_dependencies(license_plate_ocr_gennodejs license_plate_ocr_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS license_plate_ocr_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(license_plate_ocr
  "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/license_plate_ocr
)

### Generating Module File
_generate_module_py(license_plate_ocr
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/license_plate_ocr
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(license_plate_ocr_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(license_plate_ocr_generate_messages license_plate_ocr_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ncut/ROS/craic-master/control_ws/src/license_plate_ocr/srv/LicensePlateOCR.srv" NAME_WE)
add_dependencies(license_plate_ocr_generate_messages_py _license_plate_ocr_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(license_plate_ocr_genpy)
add_dependencies(license_plate_ocr_genpy license_plate_ocr_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS license_plate_ocr_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/license_plate_ocr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/license_plate_ocr
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(license_plate_ocr_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(license_plate_ocr_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/license_plate_ocr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/license_plate_ocr
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(license_plate_ocr_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(license_plate_ocr_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/license_plate_ocr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/license_plate_ocr
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(license_plate_ocr_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(license_plate_ocr_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/license_plate_ocr)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/license_plate_ocr
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(license_plate_ocr_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(license_plate_ocr_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/license_plate_ocr)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/license_plate_ocr\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/license_plate_ocr
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(license_plate_ocr_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(license_plate_ocr_generate_messages_py sensor_msgs_generate_messages_py)
endif()
