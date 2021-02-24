# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tdcp: 2 messages, 0 services")

set(MSG_I_FLAGS "-Itdcp:/home/christian/lateralOffset/src/tdcp/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iros_sensor_msgs:/home/christian/lateralOffset/src/ros-sensor-msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tdcp_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg" NAME_WE)
add_custom_target(_tdcp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tdcp" "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg" "ros_sensor_msgs/GpsTime:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg" NAME_WE)
add_custom_target(_tdcp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tdcp" "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg" "ros_sensor_msgs/GpsTime:std_msgs/Header:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tdcp
)
_generate_msg_cpp(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tdcp
)

### Generating Services

### Generating Module File
_generate_module_cpp(tdcp
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tdcp
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tdcp_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tdcp_generate_messages tdcp_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_cpp _tdcp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_cpp _tdcp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tdcp_gencpp)
add_dependencies(tdcp_gencpp tdcp_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tdcp_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tdcp
)
_generate_msg_eus(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tdcp
)

### Generating Services

### Generating Module File
_generate_module_eus(tdcp
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tdcp
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tdcp_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tdcp_generate_messages tdcp_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_eus _tdcp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_eus _tdcp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tdcp_geneus)
add_dependencies(tdcp_geneus tdcp_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tdcp_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tdcp
)
_generate_msg_lisp(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tdcp
)

### Generating Services

### Generating Module File
_generate_module_lisp(tdcp
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tdcp
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tdcp_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tdcp_generate_messages tdcp_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_lisp _tdcp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_lisp _tdcp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tdcp_genlisp)
add_dependencies(tdcp_genlisp tdcp_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tdcp_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tdcp
)
_generate_msg_nodejs(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tdcp
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tdcp
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tdcp
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tdcp_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tdcp_generate_messages tdcp_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_nodejs _tdcp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_nodejs _tdcp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tdcp_gennodejs)
add_dependencies(tdcp_gennodejs tdcp_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tdcp_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tdcp
)
_generate_msg_py(tdcp
  "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tdcp
)

### Generating Services

### Generating Module File
_generate_module_py(tdcp
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tdcp
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tdcp_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tdcp_generate_messages tdcp_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpOutput.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_py _tdcp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/tdcp/msg/TdcpDiagnostics.msg" NAME_WE)
add_dependencies(tdcp_generate_messages_py _tdcp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tdcp_genpy)
add_dependencies(tdcp_genpy tdcp_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tdcp_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tdcp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tdcp
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tdcp_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(tdcp_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET ros_sensor_msgs_generate_messages_cpp)
  add_dependencies(tdcp_generate_messages_cpp ros_sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tdcp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tdcp
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tdcp_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(tdcp_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET ros_sensor_msgs_generate_messages_eus)
  add_dependencies(tdcp_generate_messages_eus ros_sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tdcp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tdcp
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tdcp_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(tdcp_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET ros_sensor_msgs_generate_messages_lisp)
  add_dependencies(tdcp_generate_messages_lisp ros_sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tdcp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tdcp
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tdcp_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(tdcp_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET ros_sensor_msgs_generate_messages_nodejs)
  add_dependencies(tdcp_generate_messages_nodejs ros_sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tdcp)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tdcp\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tdcp
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tdcp_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(tdcp_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET ros_sensor_msgs_generate_messages_py)
  add_dependencies(tdcp_generate_messages_py ros_sensor_msgs_generate_messages_py)
endif()
