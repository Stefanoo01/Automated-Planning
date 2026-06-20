cmake_minimum_required(VERSION 3.5)
project(plansys2_abyssus_base)


find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(rclcpp_action REQUIRED)
find_package(plansys2_msgs REQUIRED)
find_package(plansys2_executor REQUIRED)

set(CMAKE_CXX_STANDARD 17)

set(dependencies
    rclcpp
    rclcpp_action
    plansys2_msgs
    plansys2_executor
)

add_executable(move_action_node src/move_action_node.cpp)
ament_target_dependencies(move_action_node ${dependencies})

add_executable(move_through_narrow_action_node src/move_through_narrow_action_node.cpp)
ament_target_dependencies(move_through_narrow_action_node ${dependencies})

add_executable(pickup_regular_sample_action_node src/pickup_regular_sample_action_node.cpp)
ament_target_dependencies(pickup_regular_sample_action_node ${dependencies})

add_executable(drop_regular_sample_action_node src/drop_regular_sample_action_node.cpp)
ament_target_dependencies(drop_regular_sample_action_node ${dependencies})

add_executable(store_regular_sample_action_node src/store_regular_sample_action_node.cpp)
ament_target_dependencies(store_regular_sample_action_node ${dependencies})

add_executable(take_empty_capsule_action_node src/take_empty_capsule_action_node.cpp)
ament_target_dependencies(take_empty_capsule_action_node ${dependencies})

add_executable(encapsulate_sample_action_node src/encapsulate_sample_action_node.cpp)
ament_target_dependencies(encapsulate_sample_action_node ${dependencies})

add_executable(pickup_sensitive_sample_action_node src/pickup_sensitive_sample_action_node.cpp)
ament_target_dependencies(pickup_sensitive_sample_action_node ${dependencies})

add_executable(drop_sensitive_sample_action_node src/drop_sensitive_sample_action_node.cpp)
ament_target_dependencies(drop_sensitive_sample_action_node ${dependencies})

add_executable(stabilize_capsule_action_node src/stabilize_capsule_action_node.cpp)
ament_target_dependencies(stabilize_capsule_action_node ${dependencies})

add_executable(store_sensitive_sample_action_node src/store_sensitive_sample_action_node.cpp)
ament_target_dependencies(store_sensitive_sample_action_node ${dependencies})

add_executable(recharge_action_node src/recharge_action_node.cpp)
ament_target_dependencies(recharge_action_node ${dependencies})

# Load environment variables from config.env
file(STRINGS "${CMAKE_SOURCE_DIR}/config.env" ENV_LINES)

foreach(line ${ENV_LINES})
  if(line MATCHES "^([^=]+)=(.*)$")
    set(${CMAKE_MATCH_1} "${CMAKE_MATCH_2}")
  endif()
endforeach()

install(DIRECTORY launch pddl DESTINATION share/${PROJECT_NAME})

install(TARGETS
  move_action_node
  move_through_narrow_action_node
  pickup_regular_sample_action_node
  drop_regular_sample_action_node
  store_regular_sample_action_node
  take_empty_capsule_action_node
  encapsulate_sample_action_node
  pickup_sensitive_sample_action_node
  drop_sensitive_sample_action_node
  stabilize_capsule_action_node
  store_sensitive_sample_action_node
  recharge_action_node
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION lib/${PROJECT_NAME}
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()

  find_package(ament_cmake_gtest REQUIRED)
endif()

ament_export_dependencies(${dependencies})

ament_package()