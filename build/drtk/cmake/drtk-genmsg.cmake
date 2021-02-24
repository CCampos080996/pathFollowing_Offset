# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "drtk: 3 messages, 0 services")

set(MSG_I_FLAGS "-Idrtk:/home/christian/lateralOffset/src/drtk/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iros_sensor_msgs:/home/christian/lateralOffset/src/ros-sensor-msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(drtk_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg" NAME_WE)
add_custom_target(_drtk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drtk" "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg" "ros_sensor_msgs/GpsTime:std_msgs/Header"
)

get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg" NAME_WE)
add_custom_target(_drtk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drtk" "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg" "drtk/DrtkOutputState:ros_sensor_msgs/GpsTime:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg" NAME_WE)
add_custom_target(_drtk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drtk" "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg;/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drtk
)
_generate_msg_cpp(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drtk
)
_generate_msg_cpp(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drtk
)

### Generating Services

### Generating Module File
_generate_module_cpp(drtk
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drtk
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(drtk_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(drtk_generate_messages drtk_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg" NAME_WE)
add_dependencies(drtk_generate_messages_cpp _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg" NAME_WE)
add_dependencies(drtk_generate_messages_cpp _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg" NAME_WE)
add_dependencies(drtk_generate_messages_cpp _drtk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drtk_gencpp)
add_dependencies(drtk_gencpp drtk_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drtk_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg;/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drtk
)
_generate_msg_eus(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drtk
)
_generate_msg_eus(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drtk
)

### Generating Services

### Generating Module File
_generate_module_eus(drtk
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drtk
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(drtk_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(drtk_generate_messages drtk_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg" NAME_WE)
add_dependencies(drtk_generate_messages_eus _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg" NAME_WE)
add_dependencies(drtk_generate_messages_eus _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg" NAME_WE)
add_dependencies(drtk_generate_messages_eus _drtk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drtk_geneus)
add_dependencies(drtk_geneus drtk_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drtk_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg;/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drtk
)
_generate_msg_lisp(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drtk
)
_generate_msg_lisp(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drtk
)

### Generating Services

### Generating Module File
_generate_module_lisp(drtk
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drtk
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(drtk_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(drtk_generate_messages drtk_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg" NAME_WE)
add_dependencies(drtk_generate_messages_lisp _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg" NAME_WE)
add_dependencies(drtk_generate_messages_lisp _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg" NAME_WE)
add_dependencies(drtk_generate_messages_lisp _drtk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drtk_genlisp)
add_dependencies(drtk_genlisp drtk_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drtk_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg;/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drtk
)
_generate_msg_nodejs(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drtk
)
_generate_msg_nodejs(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drtk
)

### Generating Services

### Generating Module File
_generate_module_nodejs(drtk
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drtk
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(drtk_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(drtk_generate_messages drtk_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg" NAME_WE)
add_dependencies(drtk_generate_messages_nodejs _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg" NAME_WE)
add_dependencies(drtk_generate_messages_nodejs _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg" NAME_WE)
add_dependencies(drtk_generate_messages_nodejs _drtk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drtk_gennodejs)
add_dependencies(drtk_gennodejs drtk_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drtk_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg;/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drtk
)
_generate_msg_py(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drtk
)
_generate_msg_py(drtk
  "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg"
  "${MSG_I_FLAGS}"
  "/home/christian/lateralOffset/src/ros-sensor-msgs/msg/GpsTime.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drtk
)

### Generating Services

### Generating Module File
_generate_module_py(drtk
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drtk
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(drtk_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(drtk_generate_messages drtk_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkDiagnostics.msg" NAME_WE)
add_dependencies(drtk_generate_messages_py _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutput.msg" NAME_WE)
add_dependencies(drtk_generate_messages_py _drtk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/christian/lateralOffset/src/drtk/msg/DrtkOutputState.msg" NAME_WE)
add_dependencies(drtk_generate_messages_py _drtk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drtk_genpy)
add_dependencies(drtk_genpy drtk_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drtk_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drtk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drtk
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(drtk_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(drtk_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET ros_sensor_msgs_generate_messages_cpp)
  add_dependencies(drtk_generate_messages_cpp ros_sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drtk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drtk
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(drtk_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(drtk_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET ros_sensor_msgs_generate_messages_eus)
  add_dependencies(drtk_generate_messages_eus ros_sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drtk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drtk
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(drtk_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(drtk_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET ros_sensor_msgs_generate_messages_lisp)
  add_dependencies(drtk_generate_messages_lisp ros_sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drtk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drtk
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(drtk_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(drtk_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET ros_sensor_msgs_generate_messages_nodejs)
  add_dependencies(drtk_generate_messages_nodejs ros_sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drtk)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drtk\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drtk
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(drtk_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(drtk_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET ros_sensor_msgs_generate_messages_py)
  add_dependencies(drtk_generate_messages_py ros_sensor_msgs_generate_messages_py)
endif()
