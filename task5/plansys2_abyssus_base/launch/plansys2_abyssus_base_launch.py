import os

from ament_index_python.packages import get_package_share_directory

from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, OpaqueFunction, SetEnvironmentVariable
from launch.substitutions import LaunchConfiguration

from launch_ros.actions import Node


def load_env(path): # allows to load the .env file without the need to install external dipendencies
    cfg = {}
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#") or "=" not in line:
                continue
            k, v = line.split("=", 1)
            cfg[k.strip()] = v.strip().strip('"')
    return cfg

# Launch setup
def launch_setup(context, *args, **kwargs):

    config_file = LaunchConfiguration('config_file').perform(context)
    if not config_file:
        raise RuntimeError("config_file not provided")

    cfg = load_env(config_file)

    pkg_name = cfg['PROJECT_NAME']

    share_dir = get_package_share_directory(pkg_name)
    domain_file = os.path.join(share_dir, "pddl", "domain.pddl")

    namespace = LaunchConfiguration('namespace')

    nodes = []

    bringup_dir = get_package_share_directory('plansys2_bringup')
    default_action_bt_xml_filename = os.path.join(
        get_package_share_directory('plansys2_executor'),
        'behavior_trees',
        'plansys2_action_bt.xml'
    )
    params_file = os.path.join(bringup_dir, 'params', 'plansys2_params.yaml')

    # PlanSys2 bringup node
    plansys2_cmd = Node(
        package='plansys2_bringup',
        executable='plansys2_node',
        output='screen',
        namespace=namespace,
        parameters=[
            {
                'model_file': domain_file,
                'default_action_bt_xml_filename': default_action_bt_xml_filename
            },
            params_file
        ],
        arguments=[
            '--ros-args',
            '--log-level', 'rcl.logging_rosout:=error',
            '--log-level', 'LifecyclePublisher:=error',
        ],
    )

    # Action nodes creation.
    # Each PlanSys2 performer handles one active goal at a time. Since every task
    # action is parameterized by the ROV as its first argument, launch one performer
    # per ROV and specialize that first argument. This allows parallel actions on
    # different ROVs without multiple performers competing for the same request.
    actions = [
        ("move_action_node", 3),
        ("move_through_narrow_action_node", 3),
        ("pickup_regular_sample_action_node", 5),
        ("drop_regular_sample_action_node", 5),
        ("store_regular_sample_action_node", 5),
        ("take_empty_capsule_action_node", 5),
        ("encapsulate_sample_action_node", 4),
        ("pickup_sensitive_sample_action_node", 6),
        ("drop_sensitive_sample_action_node", 6),
        ("stabilize_capsule_action_node", 4),
        ("store_sensitive_sample_action_node", 6),
    ]

    for action, arg_count in actions:
        for rov in ("rov1", "rov2"):
            nodes.append(
                Node(
                    package=pkg_name,
                    executable=action,
                    name=f"{action}_{rov}",
                    namespace=namespace,
                    output='screen',
                    parameters=[{
                        "specialized_arguments": [rov] + [""] * (arg_count - 1),
                    }],
                )
            )

    nodes.append(
        Node(
            package=pkg_name,
            executable="recharge_action_node",
            name="recharge_action_node",
            namespace=namespace,
            output='screen',
        )
    )

    return [plansys2_cmd] + nodes


def generate_launch_description():

    return LaunchDescription([

        # Path to config file from bash
        DeclareLaunchArgument(
            'config_file',
            description='Path to config.env file'
        ),

        # Optional namespace
        DeclareLaunchArgument(
            'namespace',
            default_value='',
            description='Namespace'
        ),

        # Make logs easier to read
        SetEnvironmentVariable(
            'RCUTILS_LOGGING_USE_STDOUT',
            '1'
        ),
        SetEnvironmentVariable(
            'RCUTILS_LOGGING_BUFFERED_STREAM',
            '1'
        ),

        # Launch everything
        OpaqueFunction(function=launch_setup)
    ])
