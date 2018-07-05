# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mmmros: 2 messages, 0 services")

set(MSG_I_FLAGS "-Immmros:/home/sid/catkin_ws/src/mmmros/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mmmros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg" NAME_WE)
add_custom_target(_mmmros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mmmros" "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg" ""
)

get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg" NAME_WE)
add_custom_target(_mmmros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mmmros" "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mmmros
)
_generate_msg_cpp(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mmmros
)

### Generating Services

### Generating Module File
_generate_module_cpp(mmmros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mmmros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mmmros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mmmros_generate_messages mmmros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_cpp _mmmros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_cpp _mmmros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mmmros_gencpp)
add_dependencies(mmmros_gencpp mmmros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mmmros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mmmros
)
_generate_msg_eus(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mmmros
)

### Generating Services

### Generating Module File
_generate_module_eus(mmmros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mmmros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mmmros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mmmros_generate_messages mmmros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_eus _mmmros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_eus _mmmros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mmmros_geneus)
add_dependencies(mmmros_geneus mmmros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mmmros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mmmros
)
_generate_msg_lisp(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mmmros
)

### Generating Services

### Generating Module File
_generate_module_lisp(mmmros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mmmros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mmmros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mmmros_generate_messages mmmros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_lisp _mmmros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_lisp _mmmros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mmmros_genlisp)
add_dependencies(mmmros_genlisp mmmros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mmmros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mmmros
)
_generate_msg_nodejs(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mmmros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mmmros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mmmros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mmmros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mmmros_generate_messages mmmros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_nodejs _mmmros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_nodejs _mmmros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mmmros_gennodejs)
add_dependencies(mmmros_gennodejs mmmros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mmmros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mmmros
)
_generate_msg_py(mmmros
  "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mmmros
)

### Generating Services

### Generating Module File
_generate_module_py(mmmros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mmmros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mmmros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mmmros_generate_messages mmmros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/Movement.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_py _mmmros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sid/catkin_ws/src/mmmros/msg/SensorData.msg" NAME_WE)
add_dependencies(mmmros_generate_messages_py _mmmros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mmmros_genpy)
add_dependencies(mmmros_genpy mmmros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mmmros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mmmros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mmmros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mmmros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mmmros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mmmros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mmmros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mmmros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mmmros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mmmros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mmmros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mmmros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mmmros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mmmros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mmmros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mmmros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mmmros_generate_messages_py std_msgs_generate_messages_py)
endif()
