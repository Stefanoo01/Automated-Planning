# Copyright 2019 Intelligent Robotics Lab
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os

from ament_index_python.packages import get_package_share_directory

from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription, SetEnvironmentVariable
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node


def generate_launch_description():
    # Get the launch directory
    dir = get_package_share_directory('plansys2_abyssus_base')
    namespace = LaunchConfiguration('namespace')

    declare_namespace_cmd = DeclareLaunchArgument(
        'namespace',
        default_value='',
        description='Namespace')

    stdout_linebuf_envvar = SetEnvironmentVariable(
        'RCUTILS_CONSOLE_STDOUT_LINE_BUFFERED', '1')

    plansys2_cmd = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(os.path.join(
            get_package_share_directory('plansys2_bringup'),
            'launch',
            'plansys2_bringup_launch_monolithic.py')),
        launch_arguments={
          'model_file': dir + '/pddl/domain.pddl',
          'namespace': namespace
          }.items())

    # Specify the actions
    move_cmd = Node(
        package='plansys2_abyssus_base',
        executable='move_action_node',
        name='move_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    move_through_narrow_cmd = Node(
        package='plansys2_abyssus_base',
        executable='move_through_narrow_action_node',
        name='move_through_narrow_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    pickup_regular_sample_cmd = Node(
        package='plansys2_abyssus_base',
        executable='pickup_regular_sample_action_node',
        name='pickup_regular_sample_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    drop_regular_sample_cmd = Node(
        package='plansys2_abyssus_base',
        executable='drop_regular_sample_action_node',
        name='drop_regular_sample_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    store_regular_sample_cmd = Node(
        package='plansys2_abyssus_base',
        executable='store_regular_sample_action_node',
        name='store_regular_sample_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    take_empty_capsule_cmd = Node(
        package='plansys2_abyssus_base',
        executable='take_empty_capsule_action_node',
        name='take_empty_capsule_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    encapsulate_sample_cmd = Node(
        package='plansys2_abyssus_base',
        executable='encapsulate_sample_action_node',
        name='encapsulate_sample_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    pickup_sensitive_sample_cmd = Node(
        package='plansys2_abyssus_base',
        executable='pickup_sensitive_sample_action_node',
        name='pickup_sensitive_sample_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    drop_sensitive_sample_cmd = Node(
        package='plansys2_abyssus_base',
        executable='drop_sensitive_sample_action_node',
        name='drop_sensitive_sample_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    stabilize_capsule_cmd = Node(
        package='plansys2_abyssus_base',
        executable='stabilize_capsule_action_node',
        name='stabilize_capsule_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    store_sensitive_sample_cmd = Node(
        package='plansys2_abyssus_base',
        executable='store_sensitive_sample_action_node',
        name='store_sensitive_sample_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    recharge_cmd = Node(
        package='plansys2_abyssus_base',
        executable='recharge_action_node',
        name='recharge_action_node',
        namespace=namespace,
        output='screen',
        parameters=[])

    # Create the launch description and populate
    ld = LaunchDescription()

    # Set environment variables
    ld.add_action(stdout_linebuf_envvar)
    ld.add_action(declare_namespace_cmd)

    # Declare the launch options
    ld.add_action(plansys2_cmd)

    ld.add_action(move_cmd)
    ld.add_action(move_through_narrow_cmd)
    ld.add_action(pickup_regular_sample_cmd)
    ld.add_action(drop_regular_sample_cmd)
    ld.add_action(store_regular_sample_cmd)
    ld.add_action(take_empty_capsule_cmd)
    ld.add_action(encapsulate_sample_cmd)
    ld.add_action(pickup_sensitive_sample_cmd)
    ld.add_action(drop_sensitive_sample_cmd)
    ld.add_action(stabilize_capsule_cmd)
    ld.add_action(store_sensitive_sample_cmd)
    ld.add_action(recharge_cmd)

    return ld
