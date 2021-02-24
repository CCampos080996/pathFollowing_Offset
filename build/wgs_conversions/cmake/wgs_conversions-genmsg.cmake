# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wgs_conversions: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wgs_conversions_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv" NAME_WE)
add_custom_target(_wgs_conversions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wgs_conversions" "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(wgs_conversions
  "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wgs_conversions
)

### Generating Module File
_generate_module_cpp(wgs_conversions
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wgs_conversions
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wgs_conversions_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wgs_conversions_generate_messages wgs_conversions_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv" NAME_WE)
add_dependencies(wgs_conversions_generate_messages_cpp _wgs_conversions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wgs_conversions_gencpp)
add_dependencies(wgs_conversions_gencpp wgs_conversions_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wgs_conversions_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(wgs_conversions
  "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wgs_conversions
)

### Generating Module File
_generate_module_eus(wgs_conversions
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wgs_conversions
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wgs_conversions_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wgs_conversions_generate_messages wgs_conversions_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv" NAME_WE)
add_dependencies(wgs_conversions_generate_messages_eus _wgs_conversions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wgs_conversions_geneus)
add_dependencies(wgs_conversions_geneus wgs_conversions_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wgs_conversions_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(wgs_conversions
  "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wgs_conversions
)

### Generating Module File
_generate_module_lisp(wgs_conversions
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wgs_conversions
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wgs_conversions_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wgs_conversions_generate_messages wgs_conversions_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv" NAME_WE)
add_dependencies(wgs_conversions_generate_messages_lisp _wgs_conversions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wgs_conversions_genlisp)
add_dependencies(wgs_conversions_genlisp wgs_conversions_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wgs_conversions_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(wgs_conversions
  "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wgs_conversions
)

### Generating Module File
_generate_module_nodejs(wgs_conversions
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wgs_conversions
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wgs_conversions_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wgs_conversions_generate_messages wgs_conversions_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv" NAME_WE)
add_dependencies(wgs_conversions_generate_messages_nodejs _wgs_conversions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wgs_conversions_gennodejs)
add_dependencies(wgs_conversions_gennodejs wgs_conversions_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wgs_conversions_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(wgs_conversions
  "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wgs_conversions
)

### Generating Module File
_generate_module_py(wgs_conversions
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wgs_conversions
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wgs_conversions_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wgs_conversions_generate_messages wgs_conversions_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/christian/lateralOffset/src/wgs_conversions/srv/WgsConversion.srv" NAME_WE)
add_dependencies(wgs_conversions_generate_messages_py _wgs_conversions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wgs_conversions_genpy)
add_dependencies(wgs_conversions_genpy wgs_conversions_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wgs_conversions_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wgs_conversions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wgs_conversions
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wgs_conversions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wgs_conversions
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wgs_conversions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wgs_conversions
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wgs_conversions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wgs_conversions
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wgs_conversions)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wgs_conversions\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wgs_conversions
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
