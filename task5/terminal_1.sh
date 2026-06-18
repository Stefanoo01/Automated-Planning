#setup bash
source /opt/ros/humble/setup.bash

# make sure problem file is present
echo -e "\n ## Creating problem file ## \n"
./src/plansys2_abissus_base/setup.sh

# compile the repository
echo -e "\n ## Compiling the repo ## \n"
colcon build --symlink-install
rosdep install --from-paths ./ --ignore-src -r -y
colcon build --symlink-install


# run PlanSys2 framework
echo -e "\n ## Launching plansys2 ## \n"
source install/setup.bash
ros2 launch plansys2_abyssus_base plansys2_abyssus_base_launch.py