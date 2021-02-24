# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lateraloffset: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilateraloffset:/home/christian/lateralOffset/src/lateraloffset/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iros_sensor_msgs:/home/christian/lateralOffset/src/ros-sensor-msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lateraloffset_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg" NAME_WE)
add_custom_target(_lateraloffset_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lateraloffset" "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg" "ros_sensor_msgs/GpsTime:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lateraloffset
  "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lateraloffset
)

### Generating Services

### Generating Module File
_generate_module_cpp(lateraloffset
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lateraloffset
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lateraloffset_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lateraloffset_generate_messages lateraloffset_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg" NAME_WE)
add_dependencies(lateraloffset_generate_messages_cpp _lateraloffset_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lateraloffset_gencpp)
add_dependencies(lateraloffset_gencpp lateraloffset_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lateraloffset_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lateraloffset
  "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lateraloffset
)

### Generating Services

### Generating Module File
_generate_module_eus(lateraloffset
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lateraloffset
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lateraloffset_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lateraloffset_generate_messages lateraloffset_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg" NAME_WE)
add_dependencies(lateraloffset_generate_messages_eus _lateraloffset_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lateraloffset_geneus)
add_dependencies(lateraloffset_geneus lateraloffset_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lateraloffset_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lateraloffset
  "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lateraloffset
)

### Generating Services

### Generating Module File
_generate_module_lisp(lateraloffset
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lateraloffset
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lateraloffset_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lateraloffset_generate_messages lateraloffset_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg" NAME_WE)
add_dependencies(lateraloffset_generate_messages_lisp _lateraloffset_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lateraloffset_genlisp)
add_dependencies(lateraloffset_genlisp lateraloffset_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lateraloffset_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lateraloffset
  "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lateraloffset
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lateraloffset
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lateraloffset
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lateraloffset_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lateraloffset_generate_messages lateraloffset_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg" NAME_WE)
add_dependencies(lateraloffset_generate_messages_nodejs _lateraloffset_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lateraloffset_gennodejs)
add_dependencies(lateraloffset_gennodejs lateraloffset_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lateraloffset_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lateraloffset
  "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lateraloffset
)

### Generating Services

### Generating Module File
_generate_module_py(lateraloffset
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lateraloffset
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lateraloffset_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lateraloffset_generate_messages lateraloffset_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/lateraloffset/msg/PathDiagnostics.msg" NAME_WE)
add_dependencies(lateraloffset_generate_messages_py _lateraloffset_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lateraloffset_genpy)
add_dependencies(lateraloffset_genpy lateraloffset_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lateraloffset_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lateraloffset)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lateraloffset
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lateraloffset_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET ros_sensor_msgs_generate_messages_cpp)
  add_dependencies(lateraloffset_generate_messages_cpp ros_sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lateraloffset)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lateraloffset
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lateraloffset_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET ros_sensor_msgs_generate_messages_eus)
  add_dependencies(lateraloffset_generate_messages_eus ros_sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lateraloffset)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lateraloffset
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lateraloffset_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET ros_sensor_msgs_generate_messages_lisp)
  add_dependencies(lateraloffset_generate_messages_lisp ros_sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lateraloffset)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lateraloffset
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lateraloffset_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET ros_sensor_msgs_generate_messages_nodejs)
  add_dependencies(lateraloffset_generate_messages_nodejs ros_sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lateraloffset)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lateraloffset\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lateraloffset
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lateraloffset_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET ros_sensor_msgs_generate_messages_py)
  add_dependencies(lateraloffset_generate_messages_py ros_sensor_msgs_generate_messages_py)
endif()
